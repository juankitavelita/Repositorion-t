<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:dc="http://purl.org/dc/elements/1.1/"
xmlns:content="http://purl.org/rss/1.0/modules/content/"
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/"
version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Simulacro de examen</title>
            </head>
            <body>
                <table>
                    <tr>
                        <th rowspan="2">Baile</th>
                        <th colspan="3">Pago</th>
                        <th rowspan="2">Plazas</th>
                        <th rowspan="2">Fecha de inicio</th>
                        <th rowspan="2">Fecha final</th>
                        <th rowspan="2">Calendario</th>
                        <th rowspan="2">Profesor</th>
                        <th rowspan="2">Sala</th>
                    </tr>
                    <tr>
                        <td><b>Precio</b></td>
                        <td><b>Moneda</b></td>
                        <td><b>Periodicidad</b></td>
                    </tr>
                    <xsl:for-each select="academia/baile">
                        <tr>
                            <td><xsl:value-of select="@tipo"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="precio/@moneda"/></td>
                            <td><xsl:value-of select="precio/@periodicidad"/></td>
                            <td><xsl:value-of select="plazas"/></td>
                            <td><xsl:value-of select="fecha_inicio"/></td>
                            <td><xsl:value-of select="fecha_final"/></td>
                            <td><xsl:value-of select="dias"/></td>
                            <td><xsl:value-of select="profesor"/></td>
                            <td><xsl:value-of select="sala"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>