import client from '../../../config/database';
import bcrypt from 'bcrypt';
const { SALT_ROUNDS, pepper, TOKEN_SECRET } = process.env;
import { sign, verify } from 'jsonwebtoken';
import CustomError from '../utile/error.utile';
import { NextFunction } from 'express';
import { codeGenerator } from '../utile/generator.util';
export type User = {
    id?: number;
    fullname: string;
    username: string;
    email: string;
    password: string;
    role: string;
    isVerified: boolean;
    phone: string;
    token?: string;
    verification_token?: string;
};

class AuthModel {
    async register(user: User): Promise<User> {
        if (user) {

            const conn = await client.connect();
            const sql = 'INSERT INTO users (fullname, username, email, password, role, isVerified, phone, verification_token) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *;';
            const hashPassword = await bcrypt.hash(user.password + String(pepper), Number(SALT_ROUNDS));
            user.verification_token = codeGenerator(36);

            user.password = hashPassword;

            const values = [
                user.fullname,
                user.username,
                user.email,
                user.password,
                user.role,
                user.isVerified,
                user.phone,
                user.verification_token
            ];
            const res = await conn.query(sql, values);
            const newUser = res.rows[0];
            const token = sign({
                username: newUser.id,
                password: newUser.username
            }, String(TOKEN_SECRET), {
                expiresIn: '7d'
            });
            user.token = token;
            conn.release();
            return user;
        } else {
            throw new CustomError('Internal Server Error', 500);
        }

    }
    async login(username: User['username'], password: User['password']): Promise<User> {
        const conn = await client.connect();
        const sql = 'SELECT * FROM users WHERE username =$1';
        const result = await conn.query(sql, [username]);
        const user: User = result.rows[0];

        const encrypt = await bcrypt.compare(password + String(pepper), user.password);

        if (encrypt) {
            const token = sign({
                username: user.id,
                password: user.username
            }, String(TOKEN_SECRET), {
                expiresIn: '7d'
            });
            user.token = token;
            return user;
        } else {
            throw new CustomError('Username or password is invalid', 400);
        }
    }
    async verifyEmail(email: User['email'], token: User['verification_token']) {
        const conn = await client.connect();
        const sql = 'UPDATE users SET isVerified=$1 WHERE email=$2 AND verification_token=$3';
        const values = [true, email, token];
        const res = await conn.query(sql, values);
        return res.rowCount >= 1 ? true : false;
    }
    async findUser(email: User['email'], username?: User['username']): Promise<boolean> {
        if (email || username) {
            const conn = await client.connect();
            const sql = 'SELECT * FROM users WHERE email=$1 OR username=$2';
            const values = [email, username];
            const res = await conn.query(sql, values);

            return res.rowCount >= 1 ? true : false;
        }
        else {
            throw new CustomError('User not found', 404);
        }
    }
}
export default new AuthModel;