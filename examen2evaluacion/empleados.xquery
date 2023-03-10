for $servicio in doc("consulta.xml")//servicio
for $empleado in $servicio/empleados/empleado
for $dia in tokenize($empleado/dias, ', ')
for $hora in tokenize($empleado/horas, ', ')
order by $empleado/nombre/text()
return concat($empleado/nombre/text(), ' - ', $servicio/@nombre, ' - ', $dia, ' - ', $hora)