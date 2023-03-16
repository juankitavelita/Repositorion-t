let $doc := doc("actividad28.xml")
<publicacion>{
  let $years := distinct-values($doc/bookstore/book/year)
  for $year in $years
  return <year>{$year}</year>
}</publicacion>