<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Consulta de salud integral</title>
            </head>
            <body>
                <h1>Consulta de salud integral</h1>
                <table border="1">
                    <tr>
                        <th>Servicio</th>
                        <th>Precio</th>
                        <th>Reserva/Plazas</th>
                        <th>Horarios</th>
                        <th>Empleado(s)</th>
                    </tr>
                    <xsl:for-each select="consulta/servicios/servicio">
                        <tr>
                            <td><xsl:value-of select="@nombre"/></td>
                            <td>
                                <xsl:if test="precio/hora">
                                    <xsl:value-of select="concat(precio/hora, ' €/hora')"/><br/>
                                </xsl:if>
                                <xsl:if test="precio/mes">
                                    <xsl:value-of select="concat(precio/mes, ' €/mes')"/><br/>
                                </xsl:if>
                                <xsl:if test="precio/bono5">
                                    <xsl:value-of select="concat(precio/bono5, ' €/bono de 5 horas')"/><br/>
                                </xsl:if>
                                <xsl:if test="precio/bono10">
                                    <xsl:value-of select="concat(precio/bono10, ' €/bono de 10 horas')"/><br/>
                                </xsl:if>
                            </td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="reserva">
                                        <xsl:value-of select="reserva"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="concat(plazas, ' plazas')"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <td><xsl:value-of select="horarios/horario"/></td>
                            <td>
                                <xsl:for-each select="empleados/empleado/nombre">
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