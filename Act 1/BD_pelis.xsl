<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/Peliculas">
        <html>
            <head>
                <title>Películas</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Codigo</th>
                        <th>Titulo</th>
                        <th>Director</th>
                        <th>Duracion</th>
                        <th>Genero</th>
                        <th>Actores</th>
                    </tr>
                    <xsl:for-each select="pelicula">
                        <tr style="background-color: #B0f0f0;"> 
                            <td><xsl:value-of select="Cod_Pelicula"/></td>
                            <td><xsl:value-of select="Titulo"/></td>
                            <td><xsl:value-of select="Director"/></td>
                            <td><xsl:value-of select="Duracion"/></td>
                            <td><xsl:value-of select="Genero"/></td>
                            <td>
                                <xsl:for-each select="Actores/actor">
                                    <xsl:value-of select="Nombre"/> <xsl:value-of select="Apellidos"/><br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
