-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

insert into AnniversaryAttendees (CustomerID, PartySize)
select CustomerID, 4
from Customers
WHERE Email='atapley2j@kinetecoinc.com'

select * from AnniversaryAttendees
