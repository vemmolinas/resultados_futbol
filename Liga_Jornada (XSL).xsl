<?xml version='1.0' encoding='UTF-8' ?> 
<!--
    Document   : Liga_Jornada.xsl
    Created on : 10 de mayo de 2019, 23:14
    Author     : vemma
    Description:
        Purpose of transformation follows.
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" />
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Liga Santander - Resultados de la jornada</title>
                <link rel="stylesheet" href="CSS/Liga_Jornada-CSS.css" type="text/css" />
                <link rel="icon" type="image/png" href="CSS/Imágenes/laliga-v-1200x1200_2018.png" />
            </head>
            <body>
                <header id="Encabezado">
                    <img class="logo" alt="logo_liga" src="CSS/Imágenes/laliga-v-1200x1200_2018.png " />
                    <img class="balon" alt="balon" src="CSS/Imágenes/balon.gif" />
                    <h1>
                        <xsl:value-of select="//competicion/nombre" />
                    </h1>
                    <table>
                        <tr>
                            <td class="titulo">
                                <h2>Temporada: </h2>
                            </td>
                            <td>
                                <h2>
                                    <xsl:value-of select="//temporada" />
                                </h2>
                            </td>
                        </tr>
                        <tr>
                            <td class="titulo">
                                <h2>Jornada: </h2>
                            </td>
                            <td>
                                <h2>
                                    <xsl:value-of select="//jornada/@id" />
                                </h2>
                            </td>
                        </tr>
                    </table>
                </header>

                <ul class="menu">
                    <xsl:for-each select="//evento">
                        <li>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="escudoLocal" />
                                </xsl:attribute>
                            </img>
                        </li>
                        <li>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="escudoVisitante" />
                                </xsl:attribute>
                            </img>
                        </li>
                    </xsl:for-each>
                </ul>
        
                <section>
                    <table class="partidos">
                        <tr class="eventos">
                            <xsl:for-each select="//evento">
                                <tr class="evento">
                                    <tr>
                                        <td id="escudoLocal">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="escudoLocal" />
                                                </xsl:attribute>
                                            </img>
                                        </td>
                                        <td class="resultado" rowspan="2">
                                            <xsl:value-of select="resultadolocal" />
                                            -
                                            <xsl:value-of select="resultadovisitante" />
                                        </td>
                                        <td id="escudoVisitante">
                                            <img>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="escudoVisitante" />
                                                </xsl:attribute>
                                            </img>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td id="nombreLocal">
                                            <xsl:value-of select="equipolocal" />
                                        </td>
                                        <td id="nombreVisitante">
                                            <xsl:value-of select="equipovisitante" />
                                        </td>
                                    </tr>
                                    <td class="fecha" colspan="3">
                                        <xsl:value-of select="fecha" />
                                        <img class="separador" alt="separador" src="CSS/Imágenes/separador.png" />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tr>
                    </table>
                    <img class="futbol" alt="futbol" src="CSS/Imágenes/gifs-futbol-2.gif" />
                </section>
                <aside>
                    <table class="clasificacion">
                        <tr>
                            <td colspan="9">
                                <h3>CLASIFICACION</h3>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Pos.
                            </td>
                            <td>
                                Equipo
                            </td>
                            <td>
                                Puntos
                            </td>
                            <td>
                                PJ
                            </td>
                            <td>
                                G
                            </td>
                            <td>
                                E
                            </td>
                            <td>
                                P
                            </td>
                            <td>
                                GF
                            </td>
                            <td>
                                GC
                            </td>
                        </tr>
                        <xsl:for-each select="//team">
                            <tr>
                                <td>
                                    <xsl:value-of select="rank" />
                                </td>
                                <td>
                                    <xsl:value-of select="name" />
                                </td>
                                <td>
                                    <xsl:value-of select="points" />
                                </td>
                                <td>
                                    <xsl:value-of select="played" />
                                </td>
                                <td>
                                    <xsl:value-of select="won" />
                                </td>
                                <td>
                                    <xsl:value-of select="lost" />
                                </td>
                                <td>
                                    <xsl:value-of select="drawn" />
                                </td>
                                <td>
                                    <xsl:value-of select="goals_scored" />
                                </td>
                                <td>
                                    <xsl:value-of select="goals_conceded" />
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </aside>
                <footer>
                    2019 - Diseño original de
                    <img alt="logo" height="22" src="CSS/Imágenes/logo.png" />
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>