<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <body>
                <h2>Factura</h2>
                <table border="1">
                    <tr border="1">
                        <th>Numero de factura: <xsl:value-of select="factura/@nunero"/></th>
                    </tr>
                    <tr border="1">
                        <td colspan="2">Empresa: <xsl:value-of select="factura/empresa/nombre"/></td><td></td>
                    </tr>
                    <tr border="1">
                        <td colspan="2">Dirección: <xsl:value-of select="factura/empresa/direccion"/></td><td></td>
                    </tr>
                    <tr border="1">
                        <td colspan="2">Ciudad: <xsl:value-of select="factura/empresa/ciudad"/> <xsl:value-of select="factura/empresa/postal"/></td><td></td>
                    </tr>
                    <tr border="1">
                        <td colspan="2">CIF: <xsl:value-of select="factura/empresa/cif"/></td><td></td>
                    </tr>
                    <tr border="1">
                        <td colspan="2">Reléfono: <xsl:value-of select="factura/empresa/tel"/></td><td></td>
                    </tr>
                    <tr border="1">
                        <td colspan="2">Fax: <xsl:value-of select="factura/empresa/fax"/></td><td></td>
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
                    <tr>
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