-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select Patrons.FirstName, Patrons.LastName, Patrons.Email, count(Loans.LoanID) as Loans_Counter
from Patrons
inner join Loans
  on Loans.PatronID=Patrons.PatronID
group by Loans.PatronID
order by Loans_Counter ASC
LIMIT 5