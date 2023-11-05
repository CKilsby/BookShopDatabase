CREATE DATABASE BookShop;

USE BookShop;

CREATE TABLE Book (
    BookID int,
    BorrowerID int,
    BookName varchar(255),
    Author varchar(255)
);

CREATE TABLE Person (
	PersonID int,
    PersonForeName varchar(255),
    PersonLastName varchar(255),
    DateOfBirth Date 
);

INSERT INTO Book
VALUES (1, "The Millionaire Fastlane", "MJ DeMarco");

INSERT INTO Book
VALUES (2, "The 4 Hour Work Week", "Timothy Ferris");

INSERT INTO Person
VALUES (1, "Dave", "Wright", "1998-10-24");

INSERT INTO Person
VALUES (2, "Chad", "Stevens", "2001-08-23");

SELECT * FROM Book;
SELECT * FROM Person;

UPDATE Book
SET Name = 'Game of Thrones'
WHERE ID = 1;

UPDATE Person
SET Name = 'Jane Doe'
WHERE ID = 1;

DELETE FROM Book
WHERE ID = 1;
 
DELETE FROM Person
WHERE ID = 1;

ALTER TABLE Book
ADD COLUMN BorrowerID INT DEFAULT 0;

UPDATE Book
SET BorrowerID = 2
WHERE ID = 1 AND BorrowerID = 0;

UPDATE Book
SET BorrowerID = 0
WHERE ID = 1 AND BorrowerID = 2;

SELECT * FROM Book
WHERE BorrowerID = 2;

SELECT * FROM Book
WHERE BorrowerID = 0;
