<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Consulta de salud integral</title>
            </head>
            <body>
                <h1>Servicios</h1>
                <table border="1">
                    <tr>
                        <th>Servicio</th>
                        <th>Precio</th>
                        <th colspan="2">Bonos</th>
                        <th>Reserva</th>
                        <th>Horarios</th>
                        <th>Empleado(s)</th>
                    </tr>
                    <xsl:for-each select="consulta/servicios/servicio">
                        <tr>
                            <td><xsl:value-of select="@nombre"/></td>
                            <td>
                                <xsl:value-of select="concat(precio/hora, ' €/hora')"/><br/>
                                <xsl:value-of select="concat(precio/mes, ' €/mes')"/><br/>
                                <xsl:value-of select="concat(precio/bono5, ' €/bono de 5 horas')"/><br/>
                                <xsl:value-of select="concat(precio/bono10, ' €/bono de 10 horas')"/><br/>
                            </td>
                            <td><xsl:value-of select="reserva"/></td>
                            <td><xsl:value-of select="horarios/horario"/></td>
                            <td>
                                <xsl:for-each select="empleado/nombre">
                                    <xsl:value-of select="."/><br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
              </body>
        </html>
    </xsl:template>
</xsl:stylesheet>