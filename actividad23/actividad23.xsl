<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <body>
                <h2>Factura</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Número de factura</th>
                        <th>Fecha</th>
                        <th>Número de pedido</th>
                        <th>Forma de pago</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="factura/@nunero"/></td>
                        <td><xsl:value-of select="factura/info/fecha"/></td>
                        <td><xsl:value-of select="factura/info/pedido"/></td>
                        <td><xsl:value-of select="factura/info/pago"/></td>
                    </tr>
                </table>
                <br/>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>Nombre de la empresa</th>
                        <th>Dirección</th>
                        <th>Ciudad</th>
                        <th>Código Postal</th>
                        <th>CIF</th>
                        <th>Teléfono</th>
                        <th>Fax</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="factura/empresa/nombre"/></td>
                        <td><xsl:value-of select="factura/empresa/direccion"/></td>
                        <td><xsl:value-of select="factura/empresa/ciudad"/></td>
                        <td><xsl:value-of select="factura/empresa/postal"/></td>
                        <td><xsl:value-of select="factura/empresa/cif"/></td>
                        <td><xsl:value-of select="factura/empresa/tel"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>