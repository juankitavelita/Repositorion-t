for $v in doc("actividad27.xml")/bib/libro
where $v/empty(autor)
return concat(($v/titulo),"->",($v/@anyo))