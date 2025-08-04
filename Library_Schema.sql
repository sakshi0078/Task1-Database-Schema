CREATE DATABASE LibraryDB;   -- created the database
USE LibraryDB;               -- To use the database


CREATE TABLE Authors (             -- first table creation
    AuthorID INT PRIMARY KEY,     -- primary key
    Name VARCHAR(100)
);

CREATE TABLE Books (                -- second table creation
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (                  -- third table creation
    MemberID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Borrowing (                          -- fourth table creation
    BorrowID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

