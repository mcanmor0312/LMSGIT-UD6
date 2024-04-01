<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Libros</title>
            </head>
            <body>
                <table border="1">
                    <tr>
                        <th>Codigo</th>
                        <th>Titulo</th>
                        <th>Editorial</th>
                        <th>Edicion</th>
                        <th>ISBN</th>
                        <th>Numero de Paginas</th>
                        <th>Autor</th>
                    </tr>
                    <xsl:for-each select="Libros/libro">
                        <tr style="background-color: #B0f0f0;">
                            <td>
                                <xsl:value-of select="Cod_Libro"/>
                            </td>
                            <td>
                                <xsl:value-of select="Titulo"/>
                            </td>
                            <td>
                                <xsl:value-of select="Editorial"/>
                            </td>
                            <td>
                                <xsl:value-of select="Edicion"/>
                            </td>
                            <td>
                                <xsl:value-of select="ISBN"/>
                            </td>
                            <td>
                                <xsl:value-of select="NumPaginas"/>
                            </td>
                            <td>
                                <xsl:for-each select="Autores/autor">
                                    <xsl:value-of select="Nombre"/>
                                    <xsl:value-of select="Apellidos"/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
