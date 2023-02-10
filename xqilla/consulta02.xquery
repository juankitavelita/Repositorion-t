for $v in doc("actividad27.xml")/bib/libro
order by $v/@anyo
return concat(($v/titulo)," -> ",($v/@anyo))