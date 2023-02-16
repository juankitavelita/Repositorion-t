for $v in distinct-values(doc("actividad27.xml")/bib/libro/autor/apellido)
order by ($v)
return data($v)