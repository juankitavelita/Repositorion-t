<?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/rss/channel">
        <head>
            <link rel="stylesheet" href="actividad26.css"/>
        </head>
        <html>
            <body>
                <header><xsl:value-of select="title/"/></header>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>