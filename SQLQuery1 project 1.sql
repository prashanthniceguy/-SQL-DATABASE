create database libraryDB;
use libraryDB;
create table books
(
BookID int primary key,
titale varchar(255),
authorID int,
publishedyear int,
genre varchar(100)
);
create table authors
(
authorID INT primary key,
Name varchar(255),
birthyear int
);
create table Borrower
(
BorrowerID int primary key,
Name varchar(255),
contactinfo varchar(255)
);
create table borrowingrecords
(
RecordID int primary key,
BookID int,
BorrowerID int,
Borrowdate Date,
Returndate Date,
);
iNSERT INTO Books (BookID, titale, AuthorID, PublishedYear, Genre) VALUES
(1, 'Harry Potter and the Philosopher Stone', 1, 1997, 'Fantasy'),
(2, '1984', 2, 1949, 'Dystopian'),
(3, 'The Hobbit', 3, 1937, 'Fantasy');

iNSERT INTO Authors (AuthorID, Name, BirthYear) VALUES
(1, 'J.K. Rowling', 1965),
(2, 'George Orwell', 1903),
(3, 'J.R.R. Tolkien', 1892);
INSERT INTO Borrower (BorrowerID, Name, ContactInfo) VALUES
(1, 'John Doe', 'john.doe@example.com'),
(2, 'Jane Smith', 'jane.smith@example.com');
INSERT INTO BorrowingRecords (RecordID, BookID, BorrowerID, BorrowDate, ReturnDate) VALUES
(1, 1, 1, '2023-01-01', '2023-01-10'),
(2, 2, 2, '2023-01-05', '2023-01-15');


