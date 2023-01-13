-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

select * from customers
WHERE LASTname = 'Jenkins' and firstname='Taylor';

update Customers 
  set Address='74 Pine St.', City = 'New York', State='NY'
WHERE CustomerID=26;

select * from Customers where CustomerID=26;