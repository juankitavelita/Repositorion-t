<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="actividad29.xsl" type="text/xsl"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/"
    version="1.0">
    <xsl:template match="/rss/channel">
        <html>
            <head>
                <title>Actividad 29</title>
                <link rel="stylesheet" href="actividad29.css"/>
            </head>
            <body>
                <div class="titulo">
                    <h1 style="text-align:center"><xsl:value-of select="title"/></h1>
                </div>
                <div class="cols">
                    <div class="col1">
                        <xsl:value-of select="description" />
                    </div>
                    <div class="col2">
                        Página oficial -> <xsl:value-of select="link" /><br/>
                         <br/>
                        Fecha y hora -> <xsl:value-of select="lastBuildDate" /><br/>
                         <br/>
                        Lenguaje -> <xsl:value-of select="language" />
                    </div>
                </div>
                <xsl:for-each select="item">
                    <div class="noticia">
                        <h2><xsl:value-of select="title" /></h2><br/>
                        <xsl:value-of select="pubDate" /><br/>
                        <xsl:for-each select="category">
                            <xsl:value-of select="." /> | 
                        </xsl:for-each><br/>
                        <xsl:value-of select="description" /><br/>
                        <xsl:element name="img">
                            <xsl:attribute name="src">
                                <xsl:value-of select="media:content/@url"/>
                            </xsl:attribute>
                            <xsl:attribute name="height">
                                250
                            </xsl:attribute>
                        </xsl:element><br/>
                        <h3><xsl:value-of select="media:title"/></h3><br/>
                        <b><xsl:value-of select="media:text" /></b><br/>
                        <xsl:value-of select="media:description" /><br/>
                        Fotógrafo: <xsl:value-of select="media:credit" /> <br/>
                        Autor/a: <xsl:value-of select="dc:creator" /><br/>
                        <a href=""><xsl:value-of select="link" /></a><br/>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>