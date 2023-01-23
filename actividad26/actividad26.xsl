<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:dcterms="http://purl.org/dc/terms/"
    xmlns:atom="http://www.w3.org/2005/Atom" xmlns:media="http://search.yahoo.com/mrss/"
    version="1.0">
    <xsl:template match="/rss/channel">
        <html>
            <head>
                <title>Actividad 26</title>
                <link rel="stylesheet" href="actividad26.css"/>
            </head>
            <body>
                <div class="titulo">
                    <h1 style="text-align:center"><xsl:value-of select="title"/></h1>
                </div>
                <header>
                    <xsl:value-of select="description" />
                    <br/>

                    <html lang="es">
                        <xsl:value-of select="language" />
                    </html>
                    <br/>
                    <a href="">
                        <xsl:value-of select="link" />
                    </a>
                    <br/>
                    <xsl:value-of select="lastBuildDate" />
                </header><br/>
                <section id="section-main">
                    <div id="div1">
                        <div id="div1-1">
                            <b>Lorem ipsum</b><br/><br/>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel convallis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In in erat sed dolor suscipit aliquet et vitae lacus.<br/><br/>
                            Duis convallis mauris at massa iaculis, eu aliquam tortor egestas. Nunc at vestibulum sapien. Nullam urna nunc, sodales ac rutrum sit amet, vulputate vel arcu. Maecenas ut justo sit amet augue gravida vehicula.<br/><br/>
                            Aenean at libero auctor, rutrum nibh id, hendrerit dolor. Maecenas finibus, libero non pulvinar posuere, purus massa accumsan leo, quis placerat nisi turpis eget erat. Sed semper tempus mi, eget eleifend diam fermentum vel.<br/><br/>
                            </div>
                            <div class="div3">
                                <b>Eniun</b>
                            </div>
                    </div>
                    <div id="div2">
                        <div id="div2-1">
                            <b>Lorem ipsum</b><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
                            Lorem ipsum dolor sit amet<br/>
                            <hr/><br/><br/><br/><br/>
                            Lorem ipsum dolor sit amet<br/>
                            <hr/><br/><br/><br/><br/>
                            Lorem ipsum dolor sit amet<br/>
                            <hr/><br/><br/><br/><br/>
                    </div>
                    </div>
                </section>
                <xsl:for-each select="item">
                    <a href="">
                        <xsl:value-of select="guid" />
                    </a>
                    <br/>
                    <xsl:value-of
                        select="title" />
                    <br/>
                    <xsl:value-of
                        select="pubDate" />
                    <br/>
                    <a href="">
                        <xsl:value-of select="link" />
                    </a>
                    <br/>
                    <xsl:value-of
                        select="dc:creator" />
                    <br/>
                    <xsl:value-of
                        select="dcterms:alternative" />
                    <br/>    
                    <xsl:value-of
                        select="description" />
                    <br/>
                    <xsl:for-each select="category">
                        <xsl:value-of
                        select="." /> | 
                    </xsl:for-each>
                    <br/>    
                    <xsl:value-of
                        select="media:content" />
                    <br/>    
                    <xsl:value-of
                        select="media:credit" />
                    <br/>    
                    <xsl:value-of
                        select="media:title" />
                    <br/>    
                    <xsl:value-of
                        select="media:text" />
                    <br/>    
                    <xsl:value-of
                        select="media:description" />
                    <br/>
                

                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>