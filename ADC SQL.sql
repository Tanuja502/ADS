CREATE TABLE BOOKS(
BOOKID INT PRIMARY KEY,
TITLE VARCHAR(50),
AUTHOR VARCHAR(50),
PUBLISHER VARCHAR(50),
ISBN NUMBER,
GENRE VARCHAR(25),
AVAILABILTY VARCHAR(20));
CREATE TABLE BORROWERS(
BORROWERID INT PRIMARY KEY,
BORROWERNAME VARCHAR(25),
ADDRESS VARCHAR(200),
PHONENUMBER VARCHAR(20),
EMAIL VARCHAR(100));
CREATE TABLE LOANS(
LOANID INT PRIMARY KEY,
BOOKID INT,
BORROWERID INT,
DATEBORROWED DATE,
DUEDATE DATE,
DATERETURNED DATE,
FOREIGN KEY(BOOKID)REFERENCES BOOKS(BOOKID),
FOREIGN KEY(BORROWERID)REFERENCES BORROWERS(BORROWERID));
CREATE TABLE RESERVATIONS(
RESERVATIONID INT,
BOOKID INT,
BORROWERID INT,
DATERESERVED DATE,
DATENEEDED DATE,
STATUS VARCHAR(10),
FOREIGN KEY(BOOKID)REFERENCES BOOKS(BOOKID),
FOREIGN KEY(BORROWERID)REFERENCES BORROWERS(BORROWERID));
INSERT INTO books (BookID, Title, Author, Publisher, ISBN, Genre, AVAILABILTY)
VALUES (1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565', 'Classic', '2'),
       (2, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780061120084', 'Fiction', '0'),
       (3, '1984', 'George Orwell', 'Secker & Warburg', '9780451524935', 'Dystopian', '1');