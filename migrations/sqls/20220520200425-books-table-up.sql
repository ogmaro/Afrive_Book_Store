/* Replace with your SQL commands */
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) UNIQUE, 
    author VARCHAR(50),
    image VARCHAR(255), 
    description VARCHAR(1500),
    price float,
    status VARCHAR(255),
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp
);
INSERT INTO books(title, author, image, description, price, status )VALUES ('Chike and the River', 'Chinua Achebe', 'https://folioreview.files.wordpress.com/2020/04/f21df8d465645236f369031b1dda8746.jpg', 'Chike and the River is a children’s story by Chinua Achebe. It was first published in 1966 by Cambridge University Press, with illustrations by Prue Theobalds, and was the first of several children’s stories Achebe would write. The latest reprint has a cover design by Victor Ekpuk.', 4500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Sugar Girl', 'Kola Onadipe', 'https://continentalbooksgh.com/wp-content/uploads/2020/05/Sugar-Girl.jpg','Sugar Girl is a 1964 children novel written by Nigerian author Kola Onadipe.', 5000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Without a Silver Spoon', 'Eddie Iroh', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1347325638l/2301365.jpg','Winner of the International Board on Books for Young People, Certificate of Honour, this story for young people teaches the lesson that honesty is the best policy. Ure comes from a poor but honest family, and works as a houseboy to pay his own school fees.', 7500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('The African Child', 'Camera Laye', 'https://tothebalcony.files.wordpress.com/2012/08/africanchild1.jpg?w=584', 'The African Child is an autobiographical French novel by Camara Laye published in 1953. It tells the story of a young African child, Baba, growing up in Guinea. The novel won the Prix Charles Veillon writing prize.', 5500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('The Concubine', 'Amadin Elechi', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1281647970l/1199163.jpg', 'The Concubine is the debut novel by Nigerian writer Elechi Amadi originally published in 1966 as part of the Heinemann African Writers Series.', 5000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Half of a Yellow Sun', 'Chimamanda Adieche', 'https://farafinabooks.files.wordpress.com/2013/04/half-of-a-yellow-sun.jpg', 'Half of a Yellow Sun is a novel by Nigerian author Chimamanda Ngozi Adichie. Published in 2006 by 4th Estate in London, the novel tells the story of the Biafran War through the perspective of the characters Olanna, Ugwu, and Richard. It received critical acclaim and won the Women’s Prize for Fiction in 2007.', 10000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('There was a Country', 'Chinua Achebe', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYSZI4k6afyB1AUj8OR74jFcsaYr2E6NkHLg&usqp=CAU', 'There Was a Country: A Personal History of Biafra is a personal account by Nigerian writer Chinua Achebe of the Nigerian Civil War, also known as the Biafran War. It is considered one of the defining works of modern African non-fiction.', 8000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Kintu', 'Jennifer Nansubuga Makumbi', 'https://africanarguments.org/wp-content/uploads/2019/12/Kintu-194x300.jpg', 'Set between 1750 and 2004 in what was pre-colonial Buganda and became Uganda, Kintu narrates the story of Kintu Kidda, upon whom a curse has been placed, and his descendants. Filled with wit, mystery and comedy, the book unveils the traditions, practices and culture of the people of Buganda while raising questions around belief systems associated with curses, magic and madness.', 9000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('The Secret Lives of Baba Segi’s Wives', 'Lola Shoneyin', 'https://africanarguments.org/wp-content/uploads/2019/12/secret-lives-188x300.jpg', 'Set in Nigeria, resident patriarch Baba Segi has three wives and a litter of children, a symbol of his “manliness”. But insatiable and in need of a new prize to show off, he decides to bring home wife number four, setting in motion a series of events which uncover deep secrets from within his household.', 8500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('The Memory of Love', 'Aminatta Forna', 'https://africanarguments.org/wp-content/uploads/2019/12/memory-195x300.jpg', 'Set in the aftermath of the war in Sierra Leone, The Memory of Love is an exquisitely weaved tale of passion, pain, conflict and betrayal that perfectly captures the contradictions of the human condition. The book centres on British psychologist Adrian Lockheart, ageing former academic Elias Cole, and young surgeon Kai Mansaray, all three fighting their own battles even when the war is over.', 4000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Stay with me', 'Ayobami Adebayo', 'https://africanarguments.org/wp-content/uploads/2019/12/stay-195x300.jpg', 'It is rare to come across a writer who captures and articulates the human experience as flawlessly as Adebayo. In her debut novel, she tells the story of Yejide and Akin, and their journey from love to marriage, to their difficulties in conceiving a child. Healers and men of God are sought. Rituals are carried out and pilgrimages are undertaken.', 3500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Dust', 'Yvonne Adhiambo Owuor', 'https://africanarguments.org/wp-content/uploads/2019/12/dust-202x300.jpg', 'Owuor’s story-telling ability is unrivalled and the reader continuously falls into a chasm of memories both collective and individual. Short, sharp statements stick in the mind like a dull ache. For example, when the narrator notes that “Kenya’s official languages are English, Kiswahili and Silence” or in an observation of two characters: “they were not lovers who needed words to wound; absence sufficed.”', 4500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Tram 83', 'Fiston Mwanza Mujila', 'https://africanarguments.org/wp-content/uploads/2019/12/tram-195x300.jpg', 'Translated from French, this award-winning debut novel is dark, comical, poignant and outrageous. On the surface, an entertaining read, it awakens within the reader questions about some of the more uncomfortable realities of modern Africa.', 3000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Born on a Tuesday', 'Elnathan John', 'https://africanarguments.org/wp-content/uploads/2019/12/tuesday-195x300.jpg', 'This debut novel by everyone’s favourite satirist Elnathan John centres on Dantala, a boy growing up in northern Nigeria where politics and religion shape everyday realities and are quite literally a matter of life and death. We follow a young man coming of age within a myriad of political rivalries, religious splits, violence and fundamentalism, going well beyond the media narrative about this part of the world.', 8000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Black Moses', 'Alain Mabanckou', 'https://africanarguments.org/wp-content/uploads/2019/12/black-moses-210x300.jpg', 'In many ways, Moses’ journey is symbolic of that of post-colonial Congo, characters in his life representing the many powers that played their part in shaping a country weighed down by chaos and kleptocracy.', 2500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Ultimate Tragedy', 'Abdulai Sila', 'https://africanarguments.org/wp-content/uploads/2019/12/ultimate-tragedy-190x300.jpg', 'This book was originally published in Portuguese, in 1996 but only translated to English in 2017. It is considered to be one of the first works of fiction from Guinea Bissau to be translated into English. Set during the time of Portuguese rule, it follows the story of Ndani, a young woman rumoured to be cursed. She leaves her village and takes up a job as a maid in the home of a wealthy white family in Bissau. Her experience in the household mirrors the brutality faced by the rest of the country at the hands of the colonialists.', 8000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Freshwater ', 'Akwaeke Emezi', 'https://africanarguments.org/wp-content/uploads/2019/12/freshwater-193x300.jpg', 'Freshwater is one of those books that sit on your skin, weigh on your psyche, and meddle with your mind in a haunting and arresting way. Its story centres on Ada, a young woman carrying within her an ogbanje, a spirit with multiple heads. Unlike other spirit children, Ada does not die young and so we witness the coming alive of these forces within her, triggered by her move to America, sexual assault, marriage and more. The multitude of identities and voices take over, sometimes collectively, other times as individuals, creating a nervous energy as we wait to see what next.', 8500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Lyrics Alley ', 'Leila Aboulela', 'https://africanarguments.org/wp-content/uploads/2019/12/lyrics-200x300.jpg', 'Over the last 20 years, Aboulela’s career has gone from strength to strength, winning her accolades and award. Her third novel is a vast and compelling story set in 1950s pre-independence Sudan. Affluent businessman Mahmoud Abuzeid has two wives, Hajjah Waheeba and Nabilah, the first an old fashioned Sudanese woman, the second a young and cosmopolitan Egyptian.', 4000.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('Hairdresser of Harare', 'Tendai Huchu', 'https://africanarguments.org/wp-content/uploads/2019/12/hairdresser-196x300.jpg', 'Set in Zimbabwe, single mother Vimbai is a sharp and sassy hair stylist, the star attraction at MaKhumalo’s hair salon. But Vimbai’s position comes under threat from new arrival Dumisami, a handsome young man who becomes a firm favourite with clients and bosses. A relationship is built, until a secret threatens to destroy it.', 6500.0, 'available');
INSERT INTO books(title, author, image, description, price, status )VALUES ('The Africa Book: A Journey Through Every Country in the Continent', 'Tendai Huchu', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQACNXC4B0dp3-vZliIiTS7f5eGZ61fM416JrEwelqd&usqp=CAE&s', 'Africa: a continent of exhilirating adventure, fascinating cultures and extraordinary wildlife and landscapes, where just one experience will never quite articulate the magic of the place.', 6500.0, 'available');
