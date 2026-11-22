# 🎬 Actividad evaluable XSLT — Una noche de cine en Marvel

## 📌 Descripción

En esta actividad se ha creado un catálogo de películas basado en el universo **Marvel**, utilizando XML, XPath, XSLT, HTML y CSS.

El objetivo es transformar un documento XML que contiene información sobre diferentes películas en una página web organizada y visualmente atractiva.

El catálogo está dividido en cuatro categorías:

- Iron Man
- Thor
- Capitán América
- Los Vengadores

En total se incluyen **12 películas**, tres por cada categoría.

---

## 📁 Estructura del proyecto

La carpeta del proyecto tiene la siguiente estructura:

```text
actividad-evaluable-xslt/
├── README.md
├── cartelera.xml
├── cartelera.xsl
├── cartelera.html
├── estilos.css
└── img/
    ├── ironman-01.jpeg
    ├── ironman-02.JPG
    ├── ironman-03.jpg
    ├── thor-01.jpg
    ├── thor-02.jpg
    ├── thor-03.jpg
    ├── capitanamerica-01.jpg
    ├── capitanamerica-02.jpg
    ├── capitanamerica-03.jpg
    ├── theavengers-01.jpg
    ├── theavengers-02.jpg
    └── theavengers-03.jpeg
```

### Archivos principales

- **cartelera.xml** → contiene los datos de las películas.
- **cartelera.xsl** → contiene la transformación XSLT.
- **cartelera.html** → resultado generado a partir del XML y XSLT.
- **estilos.css** → contiene el diseño visual de la página.
- **img/** → contiene las imágenes utilizadas para las películas.
- **README.md** → documentación del proyecto.

---

## 🦸 Categorías y películas

El catálogo está organizado en cuatro categorías.

### Iron Man

- Iron Man — 2008
- Iron Man 2 — 2010
- Iron Man 3 — 2013

### Thor

- Thor — 2011
- Thor: El mundo oscuro — 2013
- Thor: Ragnarok — 2017

### Capitán América

- Capitán América: El primer vengador — 2011
- Capitán América: El Soldado de Invierno — 2014
- Capitán América: Civil War — 2016

### Los Vengadores

- The Avengers: Los Vengadores — 2012
- Vengadores: La era de Ultrón — 2015
- Vengadores: Infinity War — 2018

---

## 🗂️ Estructura del XML

El documento XML comienza con el elemento raíz `<cartelera>`.

Dentro de este elemento se encuentran las diferentes categorías mediante `<categoria>`. Cada categoría contiene varias películas mediante el elemento `<pelicula>`.

Cada película tiene:

- Un identificador único mediante el atributo `id`.
- Título.
- Año de estreno.
- Duración.
- Sinopsis.
- Reparto.
- Imagen.

Un ejemplo de la estructura utilizada es:

```xml
<pelicula id="iron-man">
    <titulo>Iron Man</titulo>
    <anio>2008</anio>
    <duracion>126</duracion>
    <sinopsis>
        Tony Stark es un brillante inventor y empresario que
        construye una armadura tecnológica para sobrevivir.
    </sinopsis>
    <reparto>
        <actor>Robert Downey Jr.</actor>
        <actor>Gwyneth Paltrow</actor>
    </reparto>
    <imagen>img/ironman-01.jpeg</imagen>
</pelicula>
```

Se ha utilizado el atributo `id` para identificar de forma única cada película y el atributo `nombre` en las categorías.

---

## 🔄 Transformación XSLT

El archivo `cartelera.xsl` se encarga de transformar la información del XML en una página HTML.

La transformación utiliza XPath para seleccionar los diferentes elementos del documento XML.

Por ejemplo, para recorrer las categorías se utiliza:

```xml
<xsl:for-each select="cartelera/categoria">
```

Para recorrer las películas de cada categoría:

```xml
<xsl:for-each select="pelicula">
```

Y para mostrar los datos de una película se utilizan expresiones como:

```xml
<xsl:value-of select="titulo"/>
```

```xml
<xsl:value-of select="anio"/>
```

```xml
<xsl:value-of select="duracion"/>
```

También se utiliza XPath para obtener la imagen correspondiente a cada película.

---

## 🔢 Ordenación de las películas

Las películas aparecen ordenadas dentro de cada categoría según su **año de estreno**, de más antigua a más reciente.

Para realizar esta ordenación se utiliza `xsl:sort`:

```xml
<xsl:sort select="anio" data-type="number" order="ascending"/>
```

De esta forma, aunque las películas del XML cambien de posición, la página HTML seguirá mostrando las películas ordenadas correctamente por año.

---

## 🖼️ Imágenes

Cada película tiene asociada una imagen almacenada dentro de la carpeta `img/`.

La ruta de la imagen se obtiene directamente desde el XML.

En la transformación XSLT se utiliza:

```xml
<img src="{imagen}" alt="Póster de {titulo}"/>
```

El atributo `alt` permite indicar el título de la película como texto alternativo de la imagen.

---

## 🎨 Diseño de la página

Para el diseño se ha utilizado un archivo CSS independiente llamado `estilos.css`.

La página está inspirada visualmente en el universo Marvel y utiliza diferentes efectos y animaciones para cada categoría.

### 🦾 Iron Man

La sección de Iron Man utiliza efectos relacionados con la tecnología y la nanotecnología, incluyendo animaciones y efectos luminosos inspirados en su armadura.

### ⚡ Thor

La sección de Thor incluye efectos visuales relacionados con rayos y electricidad, además de animaciones inspiradas en Mjolnir.

### 🛡️ Capitán América

La sección de Capitán América utiliza elementos visuales inspirados en su escudo y en los colores característicos del personaje.

### A Los Vengadores

La sección de Los Vengadores destaca especialmente mediante un diseño inspirado en el símbolo de los Vengadores, con círculos, efectos de energía y animaciones.

También se ha añadido un menú superior que permite acceder directamente a cada categoría.

Al final de la página se encuentra un botón para volver al inicio.

---

## ▶️ Ejecución de la transformación

Para generar el documento HTML a partir del XML y el XSLT se utiliza `xsltproc`.

Desde la carpeta del proyecto se ejecuta:

```bash
xsltproc cartelera.xsl cartelera.xml > cartelera.html
```

Esto genera el archivo `cartelera.html`.

Después se puede abrir en el navegador:

```bash
firefox cartelera.html
```

---

## 🧪 Prueba realizada

Para comprobar que la transformación funciona correctamente, se añadió una nueva película al documento XML y se volvió a ejecutar la transformación.

Después de generar nuevamente el archivo HTML, la nueva película apareció automáticamente en la página.

Esto demuestra que la página no está escrita manualmente en HTML, sino que se genera a partir de los datos almacenados en el XML mediante XSLT.

---

## 🛠️ Tecnologías utilizadas

- **XML** → almacenamiento y organización de los datos.
- **XPath** → selección y consulta de los elementos XML.
- **XSLT** → transformación del XML en HTML.
- **HTML** → estructura de la página resultante.
- **CSS** → diseño, estilos y animaciones.
- **xsltproc** → procesador utilizado para realizar la transformación.
