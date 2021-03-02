<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">

<xsl:template match = "/">
    <html>
        <body style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;">
            <table border="1" style="text-align: center;">
                <tr style="
                background-color: rgb(21, 116, 103);
                color: whitesmoke;
                font-weight: bolder;">
                    <td>фамилия</td>
                    <td>имя</td>
                    <td>отчество</td>
                    <td>проходной балл</td>
                    <td>год рождения</td>
                </tr>
                <xsl:for-each select = "people/person">
                    <xsl:sort select="bornIn"/>
                    <tr>
                        <td><xsl:value-of select = "surname"/></td>
                        <td><xsl:value-of select = "name"/></td>
                        <td><xsl:value-of select = "lastName"/></td>

                        
                        <xsl:choose>
                            <xsl:when test="score &lt; 6">
                            <td bgcolor="red"><xsl:value-of select = "score"/></td>
                            </xsl:when>
                            <xsl:when test="score = 6">
                            <td bgcolor="green"><xsl:value-of select = "score"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                            <td><xsl:value-of select = "score"/></td>
                            </xsl:otherwise>
                        </xsl:choose>

                        <td><xsl:value-of select = "bornIn"/></td>

                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>