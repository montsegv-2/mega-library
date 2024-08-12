CREATE DATABASE Hub_library
GO
USE Hub_library
GO


CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(255)
);
GO

CREATE TABLE Books (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    genre VARCHAR(100),
    descrip VARCHAR(255),
    coverImage VARCHAR(255)
    genre_id INT
);
GO

CREATE TABLE Readings (
    reading_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    book_id INT,
    start_date DATE,
    end_date DATE,
    status ENUM('reading', 'read', 'abandoned'),
    user_rating INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
GO

CREATE TABLE Wishlists (
    wishlist_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    book_id INT,
    added_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
GO

CREATE TABLE Dislikes (
    dislike_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    book_id INT,
    reason TEXT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
GO

CREATE TABLE Genres (
    genre_id INT IDENTITY(1,1) PRIMARY KEY,
    genre_name VARCHAR(100)
);
GO

CREATE TABLE Recommendations (
    recommendation_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    book_id INT,
    recommended_by INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (recommended_by) REFERENCES Users(user_id)
);
GO

INSERT INTO Books (title, author, genre, descrip, coverImage) VALUE
('To Kill a Mockingbird', 'Harper Lee', 'Classic', 'A novel set in the American South during the 1930s, focusing on themes of racial injustice and moral growth as seen through the eyes of a young girl.', 'to_kill_a_mockingbird.jpg'),

('The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', 'A story about the mysterious millionaire Jay Gatsby and his obsession with the beautiful Daisy Buchanan, set in the Roaring Twenties.', 'the_great_gatsby.jpg'),

('Pride and Prejudice', 'Jane Austen', 'Romance', 'A romantic novel that delves into the issues of class, marriage, and morality in early 19th century England, centered around Elizabeth Bennet and Mr. Darcy.', 'pride_and_prejudice.jpg'),

('The Catcher in the Rye', 'J.D. Salinger', 'Literary Fiction', 'A story about a teenage boy named Holden Caulfield who struggles with growing up and the phoniness of the adult world.', 'the_catcher_in_the_rye.jpg'),

('1984', 'George Orwell', 'Dystopian', 'A chilling portrayal of a totalitarian society under constant surveillance, where independent thought is suppressed.', '1984.jpg'),

('The Hobbit', 'J.R.R. Tolkien', 'Fantasy', 'The prequel to The Lord of the Rings, this book follows the journey of Bilbo Baggins as he embarks on an adventure to reclaim a lost kingdom from a fearsome dragon.', 'the_hobbit.jpg'),

('Moby Dick', 'Herman Melville', 'Adventure', 'The epic tale of Captain Ahab’s obsessive quest to kill the white whale, Moby Dick, which explores themes of fate, revenge, and humanity.', 'moby_dick.jpg'),

('War and Peace', 'Leo Tolstoy', 'Historical Fiction', 'A sweeping narrative that covers the lives of several Russian aristocratic families during the Napoleonic wars, exploring themes of love, war, and fate.', 'war_and_peace.jpg'),

('Brave New World', 'Aldous Huxley', 'Science Fiction', 'A dystopian novel set in a future where society is technologically advanced but morally bankrupt, and people are controlled through conditioning and drugs.', 'brave_new_world.jpg'),

('The Book Thief', 'Markus Zusak', 'Historical Fiction', 'Set in Nazi Germany, this novel follows a young girl who finds solace in stealing books and sharing them with others, while Death himself narrates the story.', 'the_book_thief.jpg');

GO

