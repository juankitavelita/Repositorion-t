for $servicio in doc("consulta.xml")//servicio
for $empleado in $servicio/empleados/empleado
return concat($empleado/nombre/text(), ' - ', $servicio/@nombre, ' - ', $empleado/dias/text(), ' - ', $empleado/horas/text())
