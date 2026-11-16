![codigo](codigo.jpeg)

# Introducción a XSLT

### 1. ¿Qué significan las siglas XSLT?

**Extensible Stylesheet Language Trasformations** (en español, Trasformaciones del Lenguaje de Hojas de Estilo Extendibles)

Es un lenguaje de programación declarativo de W3C diseñado para trasformar documentos **XML** a otros formatos.

---

### 2. ¿Para que se utiliza XSLT?

Se utiliza principalmente para transformar documentos XML en otros formatos (como HTML, XHTML, texto plano u otros archivos XML).

• **Conversión de datos a HTML/XHTML:** Reorganiza y da formato a los datos sin procesar de un archivo XML para mostrarlos de forma visual y estructurada en una página web.

• **Intercambio y migración de datos:** Convierte un documento XML con un esquema específico en otro documento XML con un esquema o estructura diferente.

• **Generación de otros formatos de texto:** Transforma la información XML en formatos como CSV (texto delimitado por comas) u otros lenguajes de marcado.

• **Filtrado y selección:** Utiliza expresiones XPath para buscar, extraer, ordenar o reorganizar partes específicas de un árbol de datos XML.

---

### 3. ¿Qué relación existe entre XML, XPath y XSLT?

XML es un lenguaje que permite **almacenar y organizar información de forma estructurada** mediante elementos y atributos. Por ejemplo, podemos utilizar XML para guardar información sobre libros, autores, precios, etc.

XPath es un lenguaje que permite **localizar y seleccionar elementos, atributos y datos dentro de un documento XML**. Por ejemplo, mediante XPath podemos seleccionar todos los elementos `<libro>` de un documento.

XSLT es un lenguaje utilizado para **transformar un documento XML en otro formato**. Para saber qué información debe seleccionar y procesar utiliza expresiones XPath.

Por tanto, se puede resumir la relación de esta manera:

- **XML:** contiene y estructura los datos.
- **XPath:** permite localizar los datos dentro del XML.
- **XSLT:** utiliza XPath para seleccionar esos datos y transformarlos en otro documento.

---

### 4. ¿Qué tipos de documentos se pueden generar mediante una transformación XSLT?

XSLT puede utilizarse para generar diferentes tipos de documentos a partir de un XML. Los más habituales son:

- **HTML**, para crear páginas web.
- **XML**, para generar otro documento XML con una estructura diferente.
- **Texto plano**, para obtener información sin etiquetas.

También puede utilizarse como parte de procesos más complejos en los que el resultado de la transformación se utiliza posteriormente para generar otros formatos.

Por ejemplo, podemos tener un XML con información de libros y utilizar XSLT para generar una página HTML donde aparezca una lista con sus títulos y autores.

---

### 5. ¿Qué es una hoja de estilos XSLT?

Una hoja de estilos XSLT es un documento que contiene las **reglas e instrucciones necesarias para transformar un documento XML**.

En ella se indican aspectos como qué elementos del XML queremos seleccionar, qué información queremos mostrar y cómo queremos organizar el resultado.

Aunque se llama "hoja de estilos", no funciona exactamente igual que una hoja CSS. XSLT puede modificar la estructura y organización de los datos, no solamente su apariencia.

Normalmente, una hoja XSLT comienza con el elemento `xsl:stylesheet` y contiene diferentes plantillas `xsl:template`.

---

### 6. ¿Qué función tiene un procesador XSLT?

El procesador XSLT es el programa encargado de **realizar la transformación**.

Para ello recibe normalmente dos documentos:

1. El documento XML que contiene los datos.

2. La hoja de estilos XSLT que contiene las instrucciones de transformación.

El procesador analiza el XML, aplica las reglas definidas en la hoja XSLT y genera el documento de salida.

Por ejemplo:

```text
XML + XSLT → Procesador XSLT → HTML
```

El documento XML original no se modifica durante este proceso.

---

### 7. ¿Qué extensión suelen utilizar los archivos XSLT?

Los archivos XSLT suelen utilizar las extensiones:

- `.xsl`
- `.xslt`

La extensión `.xsl` es muy habitual y es la que se suele utilizar en muchos ejemplos y ejercicios.

Por ejemplo:

```text
libros.xml
libros.xsl
```

El archivo `libros.xml` contiene los datos y `libros.xsl` contiene las instrucciones para transformar esos datos.

---

### 8. ¿Qué es una plantilla en XSLT?

Una plantilla es un conjunto de instrucciones que indica al procesador **qué debe hacer cuando encuentra determinados elementos del documento XML**.

Las plantillas se definen mediante el elemento `xsl:template`.

Una plantilla puede, por ejemplo, indicar que cuando se procese el elemento raíz del XML se debe crear una estructura HTML con un título, una lista y los datos de los libros.

Las plantillas son una de las partes fundamentales de XSLT porque permiten definir las reglas que se aplicarán durante la transformación.

---

### 9. ¿Para qué sirve el elemento `xsl:stylesheet`?

`xsl:stylesheet` es el **elemento raíz de una hoja de estilos XSLT**. Dentro de él se colocan las diferentes instrucciones y plantillas que forman la transformación.

Por ejemplo:

```xml
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Aquí se colocan las plantillas y demás instrucciones -->

</xsl:stylesheet>
```

El atributo `version` indica la versión de XSLT utilizada y `xmlns:xsl` define el espacio de nombres de los elementos de XSLT.

---

### 10. ¿Para qué sirve `xsl:template`?

`xsl:template` sirve para **definir una plantilla de transformación**.

Normalmente utiliza el atributo `match`, que indica qué nodo del documento XML debe coincidir con esa plantilla.

Por ejemplo:

```xml
<xsl:template match="/">
    <html>
        <body>
            <h1>Mis libros</h1>
        </body>
    </html>
</xsl:template>
```

En este caso, `match="/"` indica que la plantilla se aplica al nodo raíz del documento XML.

Dentro de la plantilla se encuentran las instrucciones que indican qué contenido se debe generar.

---

### 11. ¿Qué función tiene `xsl:value-of`?

`xsl:value-of` sirve para **obtener el valor de un elemento o expresión XPath y escribirlo en el documento de salida**.

Por ejemplo, si tenemos:

```xml
<libro>
    <titulo>Harry Potter</titulo>
</libro>
```

Podemos utilizar:

```xml
<xsl:value-of select="titulo"/>
```

El resultado será:

```text
Harry Potter
```

El atributo `select` contiene la expresión XPath que indica qué información queremos obtener.

---

### 12. ¿Para qué se utiliza `xsl:for-each`?

`xsl:for-each` sirve para **recorrer y procesar varios elementos que coinciden con una expresión XPath**.

Por ejemplo, si nuestro XML contiene varios libros:

```xml
<libros>
    <libro>...</libro>
    <libro>...</libro>
    <libro>...</libro>
</libros>
```

Podemos utilizar:

```xml
<xsl:for-each select="libros/libro">
    <p>
        <xsl:value-of select="titulo"/>
    </p>
</xsl:for-each>
```

De esta manera, XSLT recorrerá todos los elementos `libro` y ejecutará las instrucciones de dentro para cada uno.

Es especialmente útil cuando queremos mostrar listas de elementos que se repiten.

---

### 13. ¿Qué función tiene `xsl:output`?

`xsl:output` permite indicar **cómo queremos que se genere el documento de salida**.

Por ejemplo:

```xml
<xsl:output method="html" encoding="UTF-8"/>
```

En este caso:

- `method="html"` indica que el resultado será HTML.
- `encoding="UTF-8"` indica la codificación utilizada.

También podemos utilizar otros métodos, como:

```xml
<xsl:output method="xml"/>
```

o:

```xml
<xsl:output method="text"/>
```

Por tanto, `xsl:output` permite configurar las características principales del documento que genera la transformación.

---

### 14. ¿Qué diferencia existe entre los atributos `match` y `select`?

Aunque ambos utilizan expresiones XPath, tienen funciones diferentes.

El atributo **`match`** se utiliza principalmente para indicar **a qué nodos se aplica una plantilla**.

Por ejemplo:

```xml
<xsl:template match="libro">
```

Esto significa que la plantilla se aplica a los elementos `libro`.

Por otro lado, **`select`** se utiliza para indicar **qué información o nodos queremos seleccionar**.

Por ejemplo:

```xml
<xsl:value-of select="titulo"/>
```

Aquí `select` indica que queremos obtener el contenido del elemento `titulo`.

En resumen:

- `match` → indica **qué nodos coinciden con una plantilla**.
- `select` → indica **qué datos o nodos queremos seleccionar**.

---

### 15. ¿Por qué es necesario utilizar XPath dentro de XSLT?

XPath es importante en XSLT porque permite **navegar por la estructura del documento XML y seleccionar exactamente los datos que queremos utilizar**.

Un documento XML puede contener muchos elementos y niveles diferentes. XPath permite indicar de forma precisa qué información necesitamos.

Por ejemplo:

```xml
<xsl:value-of select="libro/titulo"/>
```

permite seleccionar el título de un libro.

También podemos utilizar expresiones más complejas para seleccionar determinados elementos según diferentes condiciones.

Por tanto, XPath y XSLT están muy relacionados: **XSLT realiza la transformación y XPath permite localizar los datos que se utilizarán durante esa transformación**.

---

### 16. ¿Cuál es la diferencia entre utilizar CSS y utilizar XSLT sobre un documento XML?

CSS y XSLT pueden utilizarse junto con XML, pero tienen objetivos diferentes.

**CSS** se utiliza principalmente para definir **cómo se presenta visualmente la información**. Por ejemplo, podemos cambiar colores, tamaños de letra, márgenes o tipos de letra.

**XSLT**, en cambio, permite **transformar el contenido y la estructura del XML**. Puede seleccionar determinados datos, cambiar su orden, generar nuevos elementos y crear un documento HTML, XML o de texto.

Por ejemplo, si tenemos un XML con una lista de libros:

```text
XML + CSS → cambia principalmente la apariencia
XML + XSLT → transforma la estructura y el contenido
```

Por ello, CSS está más orientado a la presentación, mientras que XSLT está orientado a la transformación de documentos.

---

### 17. Busca un ejemplo sencillo de una hoja XSLT que genere HTML a partir de XML. Incluye el código y explica brevemente qué hace.

Podemos partir del siguiente documento XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<libros>
    <libro>
        <titulo>Harry Potter y la piedra filosofal</titulo>
        <autor>J. K. Rowling</autor>
    </libro>

    <libro>
        <titulo>El Hobbit</titulo>
        <autor>J. R. R. Tolkien</autor>
    </libro>
</libros>
```

Para transformar este documento en HTML podemos utilizar la siguiente hoja XSLT:

```xml
<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Lista de libros</title>
            </head>

            <body>
                <h1>Lista de libros</h1>

                <ul>
                    <xsl:for-each select="libros/libro">
                        <li>
                            <strong>
                                <xsl:value-of select="titulo"/>
                            </strong>
                            -
                            <xsl:value-of select="autor"/>
                        </li>
                    </xsl:for-each>
                </ul>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
```

Esta hoja XSLT genera una página HTML a partir de los datos del XML.

El elemento `xsl:output` indica que el resultado será HTML. `xsl:template` define la plantilla que se aplicará al documento. Después, `xsl:for-each` recorre todos los elementos `<libro>` del XML.

Dentro del `for-each`, `xsl:value-of` obtiene el contenido de los elementos `<titulo>` y `<autor>` para mostrarlos en la página HTML.

El resultado será aproximadamente:

```text
Lista de libros

• Harry Potter y la piedra filosofal - J. K. Rowling
• El Hobbit - J. R. R. Tolkien
```

De esta forma podemos ver cómo XML se utiliza para almacenar los datos y XSLT, mediante XPath, se encarga de seleccionarlos y transformarlos en HTML.

## Fuentes consultadas

- [Documentación de XSLT - W3C](https://www.w3.org/TR/xslt.html)

- [XSLT - MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/XML/XSLT)

- [XPath - MDN Web Docs](https://developer.mozilla.org/en-US/docs/Web/XML/XPath)

