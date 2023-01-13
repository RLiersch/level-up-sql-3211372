-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

select Published, count(DISTINCT(Title)) as Counter
--,GROUP_CONCAT(DISTINCT(Title))
from Books
group by Published
order by Counter desc


select Books.Author, Books.Title, count(*) as Loans_Counter
from Books
inner join Loans
  on Loans.BookID=Books.BookID
group by Books.Author, Books.Title
order by Loans_Counter DESC
limit 5