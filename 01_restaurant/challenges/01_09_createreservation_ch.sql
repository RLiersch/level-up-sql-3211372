-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select *
from Customers
where Email='smac@kinetecoinc.com'

INSERT into Customers (FirstName, LastName, Email)
values ('Sam','McAdams','smac@kinetecoinc.com')

insert into Reservations (CustomerID, Date, PartySize)
VALUES (
  (select CustomerID from Customers where Email='smac@kinetecoinc.com'),
  '2022-08-12 18:00',
  5)

select *
from Reservations
inner join Customers on Reservations.CustomerID=Customers.CustomerID
WHERE Customers.Email='smac@kinetecoinc.com'