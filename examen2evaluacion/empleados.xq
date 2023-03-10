for $s in doc("consulta.xml")//servicio, $e in $s/empleado/nombre
let $h := if ($s/horarios/horario) then $s/horarios/horario else "No se especifica el horario"
return concat($e, " - ", $s/@nombre, " - ", $h)
