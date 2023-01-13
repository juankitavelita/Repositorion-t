<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <body>
                <h2>Factura</h2>
                <table border="1">
                    <tr>
                        <th colspan="3">Numero de factura: <xsl:value-of select="factura/@nunero"/></th>
                    </tr>
                    <tr>
                        <td colspan="2">Empresa: <xsl:value-of select="factura/empresa/nombre"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Dirección: <xsl:value-of select="factura/empresa/direccion"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Ciudad: <xsl:value-of select="factura/empresa/ciudad"/> <xsl:value-of select="factura/empresa/postal"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">CIF: <xsl:value-of select="factura/empresa/cif"/></td>
                        <td>Fecha: <xsl:value-of select="factura/info/fecha"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Reléfono: <xsl:value-of select="factura/empresa/tel"/></td>
                        <td>Pedido <xsl:value-of select="factura/info/pedido"/></td>
                    </tr>
                    <tr>
                        <td colspan="2">Fax: <xsl:value-of select="factura/empresa/fax"/></td>
                        <td>Forma de pago: <xsl:value-of select="factura/info/pago"/></td>
                    </tr>
                </table>
                <br/>
                <table border="1">
                    <tr>
                        <th>Datos CLIENTE</th>
                    </tr>
                    <tr>
                        <td>nº cliente: <xsl:value-of select="factura/@nunero"/></td>
                        <td>Nombre: <xsl:value-of select="factura/cliente/nombre"/></td>
                        <td>Dirección: <xsl:value-of select="factura/cliente/direccion"/></td>
                        <td>Población <xsl:value-of select="factura/cliente/ciudad"/></td>
                        <td>Cod. postal: <xsl:value-of select="factura/cliente/postal"/></td>
                        <td>Provincia: <xsl:value-of select="factura/cliente/provincia"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>