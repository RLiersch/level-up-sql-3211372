-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select
  Patrons.FirstName, Patrons.LastName, Patrons.Email,
  Books.Title,
  Loans.DueDate
from Patrons
inner join Loans
  on Loans.PatronID=Patrons.PatronID
inner join Books
  on Loans.BookID=Books.BookID
WHERE
Loans.DueDate='2022-07-13'
and Loans.ReturnedDate is NULL