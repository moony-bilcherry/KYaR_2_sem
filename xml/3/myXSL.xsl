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
                    <td>ВУЗ</td>
                    <td>Проходной балл</td>
                    <td>План приема</td>
                    <td>Город</td>
                </tr>
                <xsl:for-each select = "speciality/university">
                    <tr>
                        <td><xsl:value-of select = "uniName"/></td>
                        <td><xsl:value-of select = "passingScore"/></td>
                        <td><xsl:value-of select = "recruitmentPlan"/></td>
                        <td><xsl:value-of select = "city"/></td>
                    </tr>
                    

                </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>

</xsl:stylesheet>