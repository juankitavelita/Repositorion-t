for $v in doc("actividad27.xml")/bib/libro
return <result>
    {$v/titulo}{$v/autor}
</result>