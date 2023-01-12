<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="1">
                    <tr>
                        <th colspan="3">Fecha</th>
                        <th rowspan="2">Descripción</th>
                    </tr>
                    <xsl:for-each select="eventos/fecha">
                        <tr>
                            <td>Día</td>
                            <td>Mes</td>
                            <td>Año</td>
                        </tr>
                        <tr>
                            <td>
                                <xsl:value-of select="dia"/>
                                <xsl:value-of select="mes"/>
                                <xsl:value-of select="año"/>
                            </td>
                            <td>
                                <xsl:value-of select="@descr"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>