-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select Customers.LastName, Customers.FirstName, Customers.Email, count(Orders.OrderID)
from Customers
inner join Orders on Orders.CustomerID=Customers.CustomerID
group by Customers.LastName, Customers.FirstName, Customers.Email
order by count(Orders.OrderID) DESC
LIMIT 15


select Customers.LastName, Customers.FirstName, Customers.Email, count(Orders.OrderID)
from Customers
inner join Orders on Orders.CustomerID=Customers.CustomerID
group by Orders,CustomerID
order by count(Orders.OrderID) DESC