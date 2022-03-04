/*

-- --------------------------------------
--  7.1 Books per author
-- --------------------------------------

SELECT b.BookTitle as 'Book Title',CONCAT(a.AuthorFirstName,a.AuthorLastName) as 'Author Full Name'
FROM Books b
INNER JOIN Authors_Books_Crossref ab
ON b.BookID = ab.BookID
INNER JOIN Authors a ON 
ab.AuthorID = a.AuthorId
WHERE a.AuthorId = 4; -- Change i to 2,3,4 to see other cases--


-- --------------------------------------
--  7.2 Authors per book
-- --------------------------------------

SELECT CONCAT(a.AuthorFirstName,a.AuthorLastName) as 'Author Full Name', b.BookTitle as 'Book Title'
FROM Authors a
INNER JOIN Authors_Books_Crossref ab
ON a.AuthorID = ab.AuthorID
INNER JOIN Books b ON 
ab.BookID = b.BookId
WHERE b.BookId = 9; -- Change i from 2 to 9 to see other cases--


-- --------------------------------------
--  7.3 Author's Royalties per book
-- --------------------------------------

SELECT b.BookTitle as 'Book Title',b.AuthorRoyalties as 'Book Royalties ($)',CONCAT(a.AuthorFirstName,a.AuthorLastName) as 'Author Full Name'
FROM Authors a
INNER JOIN Authors_Books_Crossref ab
ON a.AuthorID = ab.AuthorID
INNER JOIN Books b ON 
ab.BookID = b.BookId
WHERE b.BookId = 9; -- Change i from 2 to 9 to see other cases--


-- --------------------------------------
--  7.4 Books Royalties per author
-- --------------------------------------

SELECT CONCAT(a.AuthorFirstName,a.AuthorLastName) as 'Author Full Name',SUM(b.AuthorRoyalties) as 'Author Royalties  ($)'
FROM Books b
INNER JOIN Authors_Books_Crossref ab
ON b.BookID = ab.BookID
INNER JOIN Authors a ON 
ab.AuthorID = a.AuthorId
WHERE a.AuthorId = 3; -- Change i to 2,3,4 to see other cases--


-- --------------------------------------
--  7.5 Books in a genre
-- --------------------------------------

SELECT b.BookTitle as 'Book Title', g.GenreName as 'Genre Name'
FROM Books b
INNER JOIN Genre g
ON b.GenreID = g.GenreID
WHERE g.GenreID = 1; -- Change i to 2,3,4 to see other cases--

-- --------------------------------------
--  7.6 Books published by a publisher 
-- --------------------------------------

SELECT b.BookTitle as 'Book Title', p.PublisherName as 'Publisher Name'
FROM Books b
INNER JOIN Publishers_Books_Crossref pb
ON b.BookID = pb.BookID
INNER JOIN Publishers p
ON pb.PublisherID = p.PublisherID
WHERE p.PublisherId = 5; -- Change i to 2,3,4,5 to see other cases--



-- --------------------------------------
--  7.7 Editor per book
-- --------------------------------------

SELECT CONCAT(e.EditorFirstName,e.EditorLastName) as 'Editor Full Name', b.BookTitle as 'Book Title'
FROM Editors e
INNER JOIN Editors_Books_Crossref eb
ON e.EditorID = eb.EditorID
INNER JOIN Books b ON 
eb.BookID = b.BookId
WHERE b.BookId = 1; -- Change i from 2 to 9 to see other cases--



-- --------------------------------------
--  7.8 Books per editor
-- --------------------------------------

SELECT b.BookTitle as 'Book Title', CONCAT(e.EditorFirstName,e.EditorLastName) as 'Editor Full Name'
FROM Books b
INNER JOIN Editors_Books_Crossref eb
ON b.BookID = eb.BookID
INNER JOIN Editors e ON 
eb.EditorID = e.EditorId
WHERE e.EditorId = 1; -- Change i to 2,3 to see other cases--




-- --------------------------------------
--  7.9 Books in an order
-- --------------------------------------

SELECT b.BookTitle as 'Book Title',ob.OrderId as 'Order ID'
FROM Books b
INNER JOIN Orders_Books_Customers_Crossref ob
ON b.BookID = ob.BookID
WHERE ob.OrderId = 7; -- Change i to 2,3,...8 to see other cases--



-- --------------------------------------
--  7.10 Orders for a book 
-- --------------------------------------

SELECT ob.OrderId as 'Order ID', b.BookTitle as 'Book Title'
FROM Orders_Books_Customers_Crossref ob
INNER JOIN Books b
ON ob.BookID = b.BookID
WHERE b.BookID =1;-- Change i to 2,3,...9 to see other cases--

*/


-- --------------------------------------
--  7.11 Customers per order 
-- --------------------------------------

SELECT ob.OrderID as 'Order ID', b.BookTitle as 'Book Title', CONCAT(c.CustomerFirstName,c.CustomerLastName) as 'Customer Full Name'
FROM  Orders_Books_Customers_Crossref ob
INNER JOIN Customers c
ON ob.CustomerID = c.CustomerID
INNER JOIN Books b
ON ob.BookID = b.BookID
WHERE OrderID = 8; -- Change i to 2,3,...8 to see other cases--

-- --------------------------------------
--  7.12 Order per customer
-- --------------------------------------

SELECT ob.OrderID as 'Order ID',CONCAT(c.CustomerFirstName,c.CustomerLastName) as 'Customer Full Name', b.BookTitle as 'Book Title'
FROM  Orders_Books_Customers_Crossref ob
INNER JOIN Books b
ON ob.BookID = b.BookID
INNER JOIN Customers c 
ON ob.CustomerID = c.CustomerID
WHERE ob.CustomerId = 3; -- Change i to 2,3,...4 to see other cases--





