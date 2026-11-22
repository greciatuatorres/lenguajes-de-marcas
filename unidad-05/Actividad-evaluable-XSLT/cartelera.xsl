<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">

        <html>

            <head>

                <meta charset="UTF-8"/>

                <meta name="viewport"
                      content="width=device-width, initial-scale=1.0"/>

                <title>Marvel - Una noche de cine</title>

                <link rel="stylesheet"
                      href="estilos.css"/>

            </head>


            <body id="inicio">


                <!-- =========================
                     CABECERA
                ========================== -->

                <header class="hero">

                    <div class="marvel-logo">
                        MARVEL
                    </div>

                    <div class="studios">
                        STUDIOS
                    </div>

                    <div class="presenta">
                        PRESENTA
                    </div>

                    <h1>
                        LOS VENGADORES
                    </h1>

                    <p>
                        LA TRINIDAD QUE LO EMPEZO TODO
                    </p>

                </header>



                <!-- =========================
                     MENÚ
                ========================== -->

                <nav class="menu">

                    <a href="#iron-man">
                        IRON MAN
                    </a>

                    <a href="#thor">
                        THOR
                    </a>

                    <a href="#capitan-america">
                        CAPITÁN AMÉRICA
                    </a>

                    <a href="#vengadores">
                        LOS VENGADORES
                    </a>

                </nav>



                <!-- =========================
                     CONTENIDO
                ========================== -->

                <main>


                    <xsl:for-each select="cartelera/categoria">


                        <!-- =========================
                             CATEGORÍA
                        ========================== -->

                        <xsl:choose>


                            <!-- IRON MAN -->

                            <xsl:when test="@nombre='Iron Man'">

                                <section id="iron-man"
                                         class="categoria ironman-section">

                                    <div class="iron-particles"></div>

                                    <div class="iron-particles particle-two"></div>

                                    <div class="iron-particles particle-three"></div>

                                    <div class="iron-core">

                                        <span>
                                            ◉
                                        </span>

                                    </div>


                                    <div class="category-title">

                                        <span>
                                            <xsl:value-of select="@nombre"/>
                                        </span>

                                    </div>


                                    <div class="peliculas">

                                        <xsl:for-each select="pelicula">

                                            <xsl:sort
                                                select="anio"
                                                data-type="number"
                                                order="ascending"/>


                                            <article class="pelicula">

                                                <div class="poster">

                                                    <img src="{imagen}"
                                                         alt="Póster de {titulo}"/>

                                                </div>


                                                <div class="info">

                                                    <h2>
                                                        <xsl:value-of select="titulo"/>
                                                    </h2>


                                                    <div class="datos">

                                                        <span>
                                                            📅
                                                            <xsl:value-of select="anio"/>
                                                        </span>

                                                        <span>
                                                            ⏱
                                                            <xsl:value-of select="duracion"/>
                                                            min
                                                        </span>

                                                    </div>


                                                    <p class="sinopsis">

                                                        <xsl:value-of
                                                            select="normalize-space(sinopsis)"/>

                                                    </p>


                                                    <div class="reparto">

                                                        <strong>
                                                            Reparto:
                                                        </strong>

                                                        <xsl:for-each
                                                            select="reparto/actor">

                                                            <span>

                                                                <xsl:value-of
                                                                    select="."/>

                                                                <xsl:if
                                                                    test="position() != last()">
                                                                    ,
                                                                </xsl:if>

                                                            </span>

                                                        </xsl:for-each>

                                                    </div>

                                                </div>

                                            </article>

                                        </xsl:for-each>

                                    </div>

                                </section>

                            </xsl:when>



                            <!-- THOR -->

                            <xsl:when test="@nombre='Thor'">

                                <section id="thor"
                                         class="categoria thor-section">


                                    <div class="thor-lightning lightning-one">
                                        ϟ
                                    </div>

                                    <div class="thor-lightning lightning-two">
                                        ϟ
                                    </div>

                                    <div class="thor-lightning lightning-three">
                                        ϟ
                                    </div>

                                    <div class="thor-hammer">
                                        ⚒
                                    </div>


                                    <div class="category-title">

                                        <span>
                                            <xsl:value-of select="@nombre"/>
                                        </span>

                                    </div>


                                    <div class="peliculas">

                                        <xsl:for-each select="pelicula">

                                            <xsl:sort
                                                select="anio"
                                                data-type="number"
                                                order="ascending"/>


                                            <article class="pelicula">

                                                <div class="poster">

                                                    <img src="{imagen}"
                                                         alt="Póster de {titulo}"/>

                                                </div>


                                                <div class="info">

                                                    <h2>
                                                        <xsl:value-of select="titulo"/>
                                                    </h2>


                                                    <div class="datos">

                                                        <span>
                                                            📅
                                                            <xsl:value-of select="anio"/>
                                                        </span>

                                                        <span>
                                                            ⏱
                                                            <xsl:value-of select="duracion"/>
                                                            min
                                                        </span>

                                                    </div>


                                                    <p class="sinopsis">

                                                        <xsl:value-of
                                                            select="normalize-space(sinopsis)"/>

                                                    </p>


                                                    <div class="reparto">

                                                        <strong>
                                                            Reparto:
                                                        </strong>

                                                        <xsl:for-each
                                                            select="reparto/actor">

                                                            <span>

                                                                <xsl:value-of
                                                                    select="."/>

                                                                <xsl:if
                                                                    test="position() != last()">
                                                                    ,
                                                                </xsl:if>

                                                            </span>

                                                        </xsl:for-each>

                                                    </div>

                                                </div>

                                            </article>

                                        </xsl:for-each>

                                    </div>

                                </section>

                            </xsl:when>



                            <!-- CAPITÁN AMÉRICA -->

                            <xsl:when test="@nombre='Capitán América'">

                                <section id="capitan-america"
                                         class="categoria capitan-section">


                                    <div class="cap-shield">

                                        <div class="shield-star">
                                            ★
                                        </div>

                                    </div>

                                    <div class="cap-wave"></div>


                                    <div class="category-title">

                                        <span>
                                            <xsl:value-of select="@nombre"/>
                                        </span>

                                    </div>


                                    <div class="peliculas">

                                        <xsl:for-each select="pelicula">

                                            <xsl:sort
                                                select="anio"
                                                data-type="number"
                                                order="ascending"/>


                                            <article class="pelicula">

                                                <div class="poster">

                                                    <img src="{imagen}"
                                                         alt="Póster de {titulo}"/>

                                                </div>


                                                <div class="info">

                                                    <h2>
                                                        <xsl:value-of select="titulo"/>
                                                    </h2>


                                                    <div class="datos">

                                                        <span>
                                                            📅
                                                            <xsl:value-of select="anio"/>
                                                        </span>

                                                        <span>
                                                            ⏱
                                                            <xsl:value-of select="duracion"/>
                                                            min
                                                        </span>

                                                    </div>


                                                    <p class="sinopsis">

                                                        <xsl:value-of
                                                            select="normalize-space(sinopsis)"/>

                                                    </p>


                                                    <div class="reparto">

                                                        <strong>
                                                            Reparto:
                                                        </strong>

                                                        <xsl:for-each
                                                            select="reparto/actor">

                                                            <span>

                                                                <xsl:value-of
                                                                    select="."/>

                                                                <xsl:if
                                                                    test="position() != last()">
                                                                    ,
                                                                </xsl:if>

                                                            </span>

                                                        </xsl:for-each>

                                                    </div>

                                                </div>

                                            </article>

                                        </xsl:for-each>

                                    </div>

                                </section>

                            </xsl:when>



                            <!-- VENGADORES -->

                            <xsl:when test="@nombre='Los Vengadores'">

                                <section id="vengadores"
                                         class="categoria vengadores-section">


                                    <div class="avengers-energy"></div>


                                    <div class="avengers-emblem">

                                        <div class="avengers-a">
                                            A
                                        </div>

                                    </div>


                                    <div class="team-symbol iron-symbol">
                                        ◉
                                    </div>

                                    <div class="team-symbol thor-symbol">
                                        ϟ
                                    </div>

                                    <div class="team-symbol cap-symbol">
                                        ★
                                    </div>


                                    <div class="category-title">

                                        <span>
                                            <xsl:value-of select="@nombre"/>
                                        </span>

                                    </div>


                                    <div class="peliculas">

                                        <xsl:for-each select="pelicula">

                                            <xsl:sort
                                                select="anio"
                                                data-type="number"
                                                order="ascending"/>


                                            <article class="pelicula">

                                                <div class="poster">

                                                    <img src="{imagen}"
                                                         alt="Póster de {titulo}"/>

                                                </div>


                                                <div class="info">

                                                    <h2>
                                                        <xsl:value-of select="titulo"/>
                                                    </h2>


                                                    <div class="datos">

                                                        <span>
                                                            📅
                                                            <xsl:value-of select="anio"/>
                                                        </span>

                                                        <span>
                                                            ⏱
                                                            <xsl:value-of select="duracion"/>
                                                            min
                                                        </span>

                                                    </div>


                                                    <p class="sinopsis">

                                                        <xsl:value-of
                                                            select="normalize-space(sinopsis)"/>

                                                    </p>


                                                    <div class="reparto">

                                                        <strong>
                                                            Reparto:
                                                        </strong>

                                                        <xsl:for-each
                                                            select="reparto/actor">

                                                            <span>

                                                                <xsl:value-of
                                                                    select="."/>

                                                                <xsl:if
                                                                    test="position() != last()">
                                                                    ,
                                                                </xsl:if>

                                                            </span>

                                                        </xsl:for-each>

                                                    </div>

                                                </div>

                                            </article>

                                        </xsl:for-each>

                                    </div>

                                </section>

                            </xsl:when>

                        </xsl:choose>


                    </xsl:for-each>


                    <!-- =========================
                         BOTÓN FINAL
                    ========================== -->

                    <div class="inicio-final">

                        <a href="#inicio"
                           class="boton-inicio">

                            <span>⬆</span>

                            Volver al inicio

                        </a>

                    </div>


                </main>


                <!-- =========================
                     FOOTER
                ========================== -->

                <footer>

                    <p>
                        Marvel · Studios
                    </p>

                    <p>
                        Proyecto realizado con XML + XPath + XSLT + CSS
                    </p>

                </footer>


            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>
