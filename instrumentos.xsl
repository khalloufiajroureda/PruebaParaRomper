<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Catálogo de Instrumentos</title>
            </head>
            <body>
                <h1>Catálogo de Instrumentos</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Marca</th>
                        <th>Precio (€)</th>
                        <th>Stock</th>
                    </tr>

                    <xsl:for-each select="tienda/catalogo/instrumento">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="marca"/></td>
                            <td><xsl:value-of select="precio"/></td>
                            <td><xsl:value-of select="stock"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
