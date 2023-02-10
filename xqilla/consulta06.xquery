for $v in doc("actividad27.xml")/bib/libro
where $v/count(autor)>=2
return concat(($v/titulo),"->",($v/@anyo))