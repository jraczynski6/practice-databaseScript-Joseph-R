CREATE DATABASE library_system_test;

USE library_system_test;

START TRANSACTION;

DROP TABLE IF EXISTS Borrowers;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Authors;

CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT
);

CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT NOT NULL,
    published_year INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Borrowers (
    borrower_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO Authors (name, birth_year)
VALUES
	('George R. R. Martin', 1948),
    ('J. R. R. Tolkien', 1892);

INSERT INTO Borrowers (name, email)
VALUES
	('Arya Stark', 'arya.stark@gmail.com'),
    ('Frodo Baggins', 'frodo.baggins@gmail.com'),
    ('Samwell Tarly', 'sam.tarly@gmail.com');
    
INSERT INTO Books (title, author_id, published_year)
VALUES
	('A Game of Thrones', 1, 1996),
    ('A Clash of Kings', 1, 1998),
    ('A Storm of Swords', 1, 2000),
    ('A Feast for Crows', 1, 2005),
    ('A Dance with Dragons', 1, 2011),
	('The Fellowship of the Ring', 2, 1954),
    ('The Two Towers', 2, 1954),
    ('The Return of the King', 2, 1955);
    
COMMIT;

SHOW TABLES;
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Borrowers;
