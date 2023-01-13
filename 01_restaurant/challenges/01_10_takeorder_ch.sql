-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select *
from Customers
where LastName='Hundey' and FirstName='Loretta'

insert into Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00')

select * from orders where CustomerID=70
order by OrderDate DESC;

INSERT into OrdersDishes (OrderID, DishID)
values
  (1001,(select DishID from Dishes where Name='Mini Cheeseburgers')),
  (1001,(select DishID from Dishes where Name='House Salad')),
  (1001,(select DishID from Dishes where Name='Tropical Blue Smoothie'))


select Orders.OrderID, Orders.OrderDate, Customers.FirstName, Customers.LastName,
  Dishes.Name, Dishes.Price
from Orders
inner join OrdersDishes on Orders.OrderID=OrdersDishes.OrderID
inner join Dishes on OrdersDishes.DishID=Dishes.DishID
inner join Customers on Orders.CustomerID=Customers.CustomerID
WHERE
Customers.CustomerID=70
and Orders.OrderID=1001

select Orders.OrderID, Orders.OrderDate, sum(Dishes.Price)
from Orders
inner join OrdersDishes on Orders.OrderID=OrdersDishes.OrderID
inner join Dishes on OrdersDishes.DishID=Dishes.DishID
inner join Customers on Orders.CustomerID=Customers.CustomerID
WHERE
Customers.CustomerID=70
and Orders.OrderID=1001
group by Orders.OrderID, Orders.OrderDate