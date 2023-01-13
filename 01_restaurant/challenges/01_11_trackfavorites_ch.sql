-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select Customers.FirstName, Customers.LastName, Dishes.Name as Fav_Dish
from Customers
inner join Dishes
  on Customers.FavoriteDish=Dishes.DishID
WHERE FirstName='Cleo' and LastName='Goldwater'

update Customers
  set FavoriteDish = (select DishID from Dishes WHERE Name='Quinoa Salmon Salad')
WHERE
FirstName='Cleo' and LastName='Goldwater'

select Customers.FirstName, Customers.LastName, Dishes.Name as Fav_Dish
from Customers
inner join Dishes
  on Customers.FavoriteDish=Dishes.DishID
WHERE FirstName='Cleo' and LastName='Goldwater'