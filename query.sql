-- Виводить назви книг, в яких жанр фентезі
SELECT book_name from Book where genre = 'Fantasy';

--Виводить назви книжок, авторка яких Джоан Роулінг
SELECT book_name from Book where autor_id = 2000003;

--Виводить назви книг, випущених до 2001 року
SELECT book_name from Book where  first_publication_date < 2001;