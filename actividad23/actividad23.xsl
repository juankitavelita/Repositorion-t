<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h2>Factura</h2>
                <table border="1">
                    <tr>
                        <th colspan="6">Numero de factura: <xsl:value-of select="factura/@nunero"/></th>
                    </tr>
                    <tr>
                        <td colspan="3">Empresa: <xsl:value-of select="factura/empresa/nombre"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">Dirección: <xsl:value-of select="factura/empresa/direccion"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">Ciudad: <xsl:value-of select="factura/empresa/ciudad"/> <xsl:value-of select="factura/empresa/postal"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">CIF: <xsl:value-of select="factura/empresa/cif"/></td>
                        <td>Fecha: <xsl:value-of select="factura/info/fecha"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">Reléfono: <xsl:value-of select="factura/empresa/tel"/></td>
                        <td>Pedido <xsl:value-of select="factura/info/pedido"/></td>
                    </tr>
                    <tr>
                        <td colspan="3">Fax: <xsl:value-of select="factura/empresa/fax"/></td>
                        <td>Forma de pago: <xsl:value-of select="factura/info/pago"/></td>
                    </tr>
                    <tr>
                        <th colspan="6">DATOS CLIENTE</th>
                    </tr>
                    <tr>
                        <td colspan="6">nº cliente: <xsl:value-of select="factura/@nunero"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">Nombre: <xsl:value-of select="factura/cliente/nombre"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">Dirección: <xsl:value-of select="factura/cliente/direccion"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">Población <xsl:value-of select="factura/cliente/ciudad"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">Cod. postal: <xsl:value-of select="factura/cliente/postal"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">Provincia: <xsl:value-of select="factura/cliente/provincia"/></td>
                    </tr>
                    <tr>
                        <td colspan="6">DATOS FACTURA</td>
                    </tr>
                    <tr>
                        <th>Ref.</th>
                        <th>Descripción</th>
                        <th>Cant.</th>
                        <th>Precio</th>
                        <th>I.V.A.</th>
                        <th>Importe</th>
                    </tr>
                    <xsl:for-each select="factura/datos/ref">
                        <tr>
                            <td><xsl:value-of select="@codigo"/></td>
                            <td><xsl:value-of select="descripcion"/></td>
                            <td><xsl:value-of select="cantidad"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="iva"/></td>
                            <td><xsl:value-of select="importe"/></td>
                        </tr>
                    </xsl:for-each>
                    <tr>
                        <th colspan="2">Base imponible</th>
                        <th colspan="2">% I.V.A.</th>
                        <th colspan="2">Cuota I.V.A.</th>
                    </tr>
                </table>
                <table border="1">
                    <tr>
                        <td colspan="1"><xsl:value-of select="factura/precio/base"/></td>
                        <td colspan="1"><xsl:value-of select="factura/precio/iva"/></td>
                        <td colspan="1"></td>
                    </tr>
                    <tr>
                        <th colspan="3">TOTAL FACTURA: <xsl:value-of select="factura/precio/total"/> eur</th>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>