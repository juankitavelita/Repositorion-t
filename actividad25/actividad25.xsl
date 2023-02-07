<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                factura (<xsl:value-of select="factura/@nunero"/>):<br/>
                    info:<br/>
                     - fecha: <xsl:value-of select="factura/info/fecha"/><br/>
                      - pedido: <xsl:value-of select="factura/info/pedido"/><br/>
                       - pago: <xsl:value-of select="factura/info/pago"/><br/>
                    empresa:<br/>
                        - nombre: <xsl:value-of select="factura/empresa/nombre"/><br/>
                        - direccion: <xsl:value-of select="factura/empresa/direccion"/><br/>
                        - ciudad: <xsl:value-of select="factura/empresa/ciudad"/><br/>
                        - postal: <xsl:value-of select="factura/empresa/postal"/><br/>
                        - cif: <xsl:value-of select="factura/empresa/cif"/><br/>
                        - tel: <xsl:value-of select="factura/empresa/tel"/><br/>
                        - fax: <xsl:value-of select="factura/empresa/fax"/><br/>
                    cliente (<xsl:value-of select="factura/cliente/@numero"/>):<br/>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>