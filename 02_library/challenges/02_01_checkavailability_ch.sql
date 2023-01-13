-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select *
from Books
WHERE Title='Dracula'
and not exists (
  select * from Loans where Books.BookID=Loans.BookID and Loans.ReturnedDate is null
  )


select count(*) from Books where Title='Dracula'

select count(*) from Loans
inner join Books on Books.BookID=Loans.BookID
where Books.Title='Dracula' and Loans.ReturnedDate is NULL

select
  (select count(*) from Books where Title='Dracula') -
  (select count(*) from Loans
    inner join Books on Books.BookID=Loans.BookID
    where Books.Title='Dracula' and Loans.ReturnedDate is NULL)
  as AvailableCopies