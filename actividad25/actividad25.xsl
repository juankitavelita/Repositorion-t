<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                factura (<xsl:value-of select="factura/@nunero"/>):<br/>
                    info:<br/>
                        - fecha: <xsl:value-of select="factura/info/fecha"/><br/>
                        - pedido: <xsl:value-of select="factura/info/pedido"/><br/>
                        - pago: <xsl:value-of select="factura/info/pago"/><br/><br/>
                    empresa:<br/>
                        - nombre: <xsl:value-of select="factura/empresa/nombre"/><br/>
                        - direccion: <xsl:value-of select="factura/empresa/direccion"/><br/>
                        - ciudad: <xsl:value-of select="factura/empresa/ciudad"/><br/>
                        - postal: <xsl:value-of select="factura/empresa/postal"/><br/>
                        - cif: <xsl:value-of select="factura/empresa/cif"/><br/>
                        - tel: <xsl:value-of select="factura/empresa/tel"/><br/>
                        - fax: <xsl:value-of select="factura/empresa/fax"/><br/><br/>
                    cliente (<xsl:value-of select="factura/cliente/@numero"/>):<br/>
                        - nombre: <xsl:value-of select="factura/cliente/nombre"/><br/>
                        - direccion: <xsl:value-of select="factura/cliente/direccion"/><br/>
                        - ciudad: <xsl:value-of select="factura/cliente/ciudad"/><br/>
                        - postal: <xsl:value-of select="factura/cliente/postal"/><br/>
                        - provincia: <xsl:value-of select="factura/cliente/provincia"/><br/><br/>
                    datos: <br/>
                        <xsl:for-each select="factura/datos/ref">
                            - ref (<xsl:value-of select="@codigo"/>):<br/>
                            *   * descripcion: <xsl:value-of select="descripcion"/><br/>
                            *   * cantidad: <xsl:value-of select="cantidad"/><br/>
                            *   * precio: <xsl:value-of select="precio"/><br/>
                            *   * iva: <xsl:value-of select="iva"/><br/>
                            *   * importe: <xsl:value-of select="importe"/><br/>
                        </xsl:for-each><br/>
                    precio: <br/>
                    - base: <xsl:value-of select="factura/precio/base"/><br/>
                    - iva: <xsl:value-of select="factura/precio/iva"/><br/>
                    - añadido: <xsl:value-of select="factura/precio/añadido"/><br/>
                    - total: <xsl:value-of select="factura/precio/total"/><br/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>