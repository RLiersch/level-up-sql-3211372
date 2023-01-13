-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.

select Books.Title, Books.Author, Books.Barcode
from Books
WHERE
not exists (select * from Loans where Books.BookID=Loans.BookID and ReturnedDate is null)
and Books.Published BETWEEN 1890 and 1899
order by Books.Author, Books.Title