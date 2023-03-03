for $book in doc("actividad28.xml")/bookstore
return <total>{count($book/book)}</total>