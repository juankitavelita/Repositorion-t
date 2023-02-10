for $v in doc("actividad27.xml")/bib/libro
return <libro>
    {$v/titulo}{count($v/autor)}
</libro>