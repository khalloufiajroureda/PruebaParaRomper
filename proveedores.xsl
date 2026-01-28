<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Proveedores</title>
            </head>
            <body>
                <h1>Proveedores</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Pais</th>
                        <th>Contacto</th>
                    </tr>
                    <xsl:for-each select="tienda/proveedores/proveedor">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="pais"/></td>
                            <td><xsl:value-of select="contacto"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>