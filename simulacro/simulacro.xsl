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
                <xsl:for-each select="academia/baile">
                    <xsl:value-of select="@tipo"/>
                    <xsl:value-of select="precio/@mensual"/><br/>
                    <xsl:value-of select="precio"/><br/>
                    <xsl:value-of select="precio/@moneda"/><br/>
                    <xsl:value-of select="plazas"/><br/>
                    <xsl:value-of select="fecha_inicio"/><br/>
                    <xsl:value-of select="fecha_final"/><br/>
                    <xsl:value-of select="dias"/><br/>
                    <xsl:value-of select="profesor"/><br/>
                    <xsl:value-of select="sala"/><br/><br/>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>