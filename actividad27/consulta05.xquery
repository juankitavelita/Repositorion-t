for $v in doc("actividad27.xml")/bib/libro
where $v/editorial="Addison-Wesley" and $v/@anyo>1992
return concat(($v/titulo)," -> ",($v/@anyo))