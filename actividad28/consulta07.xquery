for $book in doc("actividad28.xml")/bookstore/book
order by $book/@category, $book/title
return $book