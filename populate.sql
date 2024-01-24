--Populate Book table 

INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id) 
VALUES (1000001, 'A Tale of Two Cities', 'Historical fiction', 'English','1859-01-01', 2000001, 3000001 );
INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id) 
VALUES (1000002, 'The Little Prince', 'Fantasy', 'French','1943-01-01', 2000002, 3000002 );
INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id)
VALUES (1000003, 'Harry Potter and the Philosophers Stone', 'Fantasy', 'English', '1997-01-01', 2000003, 3000003 ); 
INSERT INTO Book (book_id, book_name, genre, original_language, first_publication_date, autor_id, sale_id) 
VALUES (1000004, 'And Then There Were None', 'Mystery', 'English','1939-01-01', 2000004, 3000004 );
INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id) 
VALUES (1000005, 'Dream of the Red Chember', 'Family saga', 'Chinese','1791-01-01', 2000005, 3000005 );
INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id) 
VALUES (1000006, 'The Hobbit', 'Fantasy', 'English','1937-01-01', 2000006, 3000006 );
INSERT INTO Book (book_id, book_name, genre, original_language,first_publication_date, autor_id, sale_id) 
VALUES (1000007, 'A History of Adventure', 'Adventure', 'English','1887-01-01', 2000007, 3000007 );
INSERT INTO Book (book_id, book_name, genre, original_language, first_publication_date, autor_id, sale_id)
VALUES (1000008, 'Vardi Wala Gunda', 'Detective', 'Hindi','1992-01-01', 2000008, 3000008 );
INSERT INTO Book (book_id, book_name, genre, original_language, first_publication_date, autor_id, sale_id) 
VALUES (1000009, 'The Da Vinci Code', 'Mystery thriller', 'English','2003-01-01', 2000009, 3000009);
INSERT INTO Book (book_id, book_name, genre, original_language, first_publication_date, autor_id, sale_id) 
VALUES (1000010, 'Harry Potter and the Chamber of Secrets', 'Fantasy', 'English','1998-01-01', 2000003, 3000010 );
 

--Populate Autor table
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000001, 'Charles Dickens');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000002, 'Antoine de Saint-Exupéry');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000003, 'J. K. Rowling');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000002, 'Vardi Wala Gunda');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000004, 'Agatha Christie');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000005, 'Cao Xueqin');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000006, 'J. R. R. Tolkien');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000007, 'H. Rider Haggard');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000008, 'Ved Prakash Sharma');
INSERT INTO Autor(autor_id, autor_name)
VALUES (2000009, 'Dan Brown');


--Populate Sale table
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000001, 200000500);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000002, 200000000);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000003, 120000000);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000004, 100040002);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000005, 100000070);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000006, 100000000);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000007, 83000000);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000008, 80000200);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000009, 80000000);
INSERT INTO Sale(sale_id, approximate_sales)
VALUES (3000010, 77000000);
