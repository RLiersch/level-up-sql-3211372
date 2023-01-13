-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

select *
from Reservations as Res
inner join Customers as cust
  on res.CustomerID=cust.CustomerID
where cust.FirstName = 'Norby'
and res.Date > '2022-07-24'

delete Reservations
where ReservationID = 2000

