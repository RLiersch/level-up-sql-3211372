-- Check out two books for Jack Vaan (jvaan@wisdompets.com).
-- Book 1: The Picture of Dorian Gray, 2855934983
-- Book 2: Great Expectations, 4043822646
-- The checkout date is August 25, 2022 and the 
-- due date is September 8, 2022.

select *
from Patrons
where Email='jvaan@wisdompets.com'

insert into Loans (PatronID, BookID, LoanDate, DueDate)
VALUES
  (
    (select PatronID from Patrons where Email='jvaan@wisdompets.com'),
    (select BookID from Books where Barcode='2855934983'),
    '2022-08-25',
    '2022-09-08'
  ),
  (
    (select PatronID from Patrons where Email='jvaan@wisdompets.com'),
    (select BookID from Books where Barcode='4043822646'),
    '2022-08-25',
    '2022-09-08'
  )

select * from Loans
order by LoanID DESC