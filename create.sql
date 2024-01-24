CREATE TABLE Autor
(
  autor_name VARCHAR(30) NOT NULL,
  autor_id INT NOT NULL,
  PRIMARY KEY (autor_id)
);

CREATE TABLE Sale
(
  sale_id INT NOT NULL,
  approximate_sales INT NOT NULL,
  PRIMARY KEY (sale_id)
);

CREATE TABLE Book
(
  book_name VARCHAR(50) NOT NULL,
  book_id INT NOT NULL,
  genre VARCHAR(30) NOT NULL,
  original_language VARCHAR(30) NOT NULL,
  first_publication_date DATE NOT NULL,
  autor_id INT NOT NULL,
  sale_id INT NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (autor_id) REFERENCES Autor(autor_id),
  FOREIGN KEY (sale_id) REFERENCES Sale(sale_id)
);