SELECT * FROM books;

-- Challenge #1
-- Task #1
select * from products;

--...
-- Challenge done

SELECT email FROM patrons;

SELECT first_name, email FROM patrons;

-- Challenge #2
-- Task #1
select first_name, last_name from users;

--...
-- Challenge done

SELECT title as Title, first_published as "First Published" FROM books;  -- keyword as will return column name as specified

-- Challenge #3
-- Task #1
select name as "Product Name", description as "Product Description" from products;
--...
-- Challenge done

-- SELECT <columns> FROM <table> WHERE <condition>;

SELECT title, author FROM books WHERE first_published = 1997;
SELECT title, author FROM books WHERE author != "J.K. Rowling";  -- brings all books that are not written by JK Rowling

-- Challenge #4
-- Task #1
select first_name, last_name from users where username = "wig_lady";
--...
-- Challenge done

-- operators
-- = equality
-- != inequality
-- < less than
-- <= less than or equal to
-- > greater than
-- >= greater than or equal to

SELECT * FROM books WHERE first_published > 2005;

-- Challenge #5
-- Task #1
SELECT * FROM results  WHERE home_score > 12;
--...
-- Challenge done

SELECT title FROM books WHERE author = "J.K. Rowling" AND first_published < 2000;
SELECT title, author FROM books WHERE author = "J.K. Rowling" OR author = "Andy Weir";

-- Challenge #6
-- Task #1
SELECT * FROM results WHERE away_team = "Hessle" AND away_score > 18;
--...
-- Challenge done

-- Challenge #7
-- Task #1
SELECT * FROM results WHERE away_team = "Hessle" AND played_on  >= "2015-10-01";
-- Challenge done

-- SELECT <columns> FROM <table> WHERE <column> IN (<value 1>, <value 2>, <value...>);

SELECT first_name, email FROM patrons WHERE library_id IN ("MCL1001", "MCL1100", "MCL1011");
SELECT first_name, email FROM patrons WHERE library_id NOT IN ("MCL1001", "MCL1100", "MCL1011");  -- the opposite

-- Challenge #8
-- Task #1
SELECT * FROM products WHERE price IN (7.99, 9.99, 11.99);
--...
-- Challenge done

-- SELECT <columns> FROM <table> WHERE <column> BETWEEN <minimum> AND <maximum>;

SELECT title, author FROM books WHERE first_published BETWEEN 1800 AND 1899;

-- Challenge #9
-- Task #1
SELECT * FROM products WHERE price BETWEEN 10.99 AND 12.99;
--...
-- Challenge done

SELECT title FROM books WHERE title LIKE "Harry Potter%";
SELECT title FROM books WHERE title LIKE "%Martian";
SELECT title FROM books WHERE title LIKE "%universe%" AND genre LIKE "non fiction";

-- Challenge #10
-- Task #1
SELECT * FROM products WHERE name LIKE "%t-shirt%";
--...
-- Challenge done

SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NULL;  -- NULL value can only be used with IS operator
SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NOT NULL;  -- the opposite

-- Challenge #11
-- Task #1
SELECT * FROM phone_book  WHERE phone IS NULL;
--...
-- Challenge done

SELECT * FROM loans, books
WHERE loans.book_id = books.id;