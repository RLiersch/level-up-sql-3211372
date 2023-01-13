-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
from Reservations
inner join Customers
  on Reservations.CustomerID=Customers.CustomerID
WHERE
Customers.LastName like 'ste%'
and Reservations.PartySize=4
order by Reservations.Date DESC