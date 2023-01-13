-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

SELECT Type, Name, Price, Description
from dishes
ORDER BY Price ASC;

SELECT Type, Name, Price, Description
from dishes
WHERE Type in ('Beverage','Appetizer')
order BY Type;

SELECT Type, Name, Price, Description
from dishes
WHERE Type not in ('Beverage')
order BY Type;