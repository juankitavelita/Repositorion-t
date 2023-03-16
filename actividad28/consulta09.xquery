for $book in doc("actividad28.xml")/bookstore
let $title := data($book/book/title)
let $count := count($book/book)
return ($title,"Total:",$count)