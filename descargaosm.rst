.. descargas de datos OSM

Descarga de datos desde OpenStreetMap
=====================================

Los Datos del mapa de OpenStreetMap, se pueden descargar de varias formas. El mapa entero son una enorme cantidad de datos (unos 50 Gb en formato comprimido). Se recomienda empezar con una región pequeña y determinada para asegurarse  que el proceso funciona correctamente.

OpenStreetMap es un proyecto federativo. Esto significa que gran cantidad de sus recursos esenciales, son suministrados por terceras partes. Sea valiente, trate de descargar de estos lugares en primer lugar. Los servidores oficiales, no son grandes centros de datos y por lo tanto no disponen de grandes recursos. Se dedican principalmente a mantener el flujo de datos. 


OSM File formats
----------------

La información de OSM se puede obtener en diversos formatos. Los más importantes son:

* OSM XML – xml- es el formato proporcionado por la API
* PBF Format – es un formato binario comprimido
* o5m – es un formato binario para alta velocidad de proceso.
* OSM JSON – es una variante JSON para el formato OSM
* Level0L - un lenguaje más fácil de leer y con menos redundancia que el XML

Se puede ampliar la información acerca de los formatos de datos utilizados por OSM en el siguiente enlace: `OSM file formats <http://wiki.openstreetmap.org/wiki/OSM_file_formats>`_


Planet: Todos los datos de una vez
----------------------------------

Planet.osm contiene todo el planeta. Es un archivo que se actualiza normalmente cada Miercoles. Son alrededor de 50 GB comprimidos.

El histórico contiene todos los objetos con toda su información de modificaciones y es mucho más grande.

Varios extractos permiten descargar archivos de tamaños más manejables, desde continentes enteros a partes de paises. Hay distintas herramientas que se pueden utilizar después para extraer datos específicos de estos archivos.

Un portal donde se pueden conseguir conjuntos grandes de datos agrupados por continentes, países o provincias es **Geofabrik**. El enlace al portal de Geofabrik es:

`http://www.geofabrik.de/ <http://www.geofabrik.de/>`_

*Geofabrik* ofrece los conjuntos de datos en formato *.osm* y también en formato *.shp*.


Pequeñas Cantidades de datos 
----------------------------

API de OpenStreetMap
^^^^^^^^^^^^^^^^^^^^

Existe una API que se puede utilizar para pequeñas descargas. Hay que tener en cuenta que el uso de la API (especialmente la descarga de zonas) está sujeta a una política de uso. No se recomienda utilizar directamente la API de *OSM*. Para descargas de zonas grandes (o respuestas a muchos usuarios a la vez) deben usarse alguno de los métodos que se señalan a continuación. 

Directamente desde el mapa
^^^^^^^^^^^^^^^^^^^^^^^^^^

Para obtener los datos correspondientes a una zona pequeña se puede utilizar la pestaña **Export**, en la página principal de OpenStreetMap, se puede seleccionar un trozo del mapa y descargar datos en varios formatos, incluido *OSM XML*. Sólo funciona en niveles de zoom grandes.

JOSM
^^^^

**JOSM** proporciona una interface amigable para la descarga de datos de un área determinada que desee visualizar de forma inmediata. Podrás editar estos datos y subirlos nuevamente. Podrás guardar los datos en un archivo en formato *.osm* para futuros procesos. Sin embargo, al emplear la API principal, no se pueden descargar áreas extensas con este método.

QGIS
^^^^

Las últimas versiones del programa GIS de escritorio *QGIS* ya incorporan un plugin que permite acceder a la descarga de los datos de OpenStreetMap de una determinada zona. Es una de las opciones más interesantes existentes a día de hoy.

Overpass API
^^^^^^^^^^^^

Overpass API permite descargar áreas determinadas, elementos con tags específicos, redes de transporte público, redes fluviales o cualquier otro tipo de entidad. Esta descarga selectiva de determinados elementos dentro del area de interés, hace que estas herramientas sean muy interesantes.

Desde lenguajes de programación
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

La utilización de datos de *OSM* en nuestros programas es posible accediendo directamente a descargas de datos desde distintos servidores. Existen interfaces específicos para distintos lenguajes como *Java*, *Python* o *Javascript*. También es posible utilizar peticiones HTTP genericas a través de Overpass API y procesar los datos obtenidos por nuestros medios.


Elegir la Región de descarga 
----------------------------

La región se especifica mediante un area rectangular que se denomina *bounding box*. Para definir el *bounding box* se dan las coordenadas de la esquina inferior izquierda y la esquina superior derecha, que corresponden a los valores máximos y mínimos de la longitud y latitud de la zona rectangular.

Hay que elegir la región más pequeña posible que sea de utilidad, ya que regiones más grandes generan archivos mayores, mayores tiempo de descarga y ocupación del servidor. 

Cuando se está empezando, es mejor empezar por regiones pequeñas para entender como funciona con pequeños conjuntos de datos. 

Hay varias formas en encontrar los valores de latitud y longitud. Si está interesado en una zona en concreto, quizás la forma más clara de ver esto, es desde la página principal del mapa. Iniciada sesión con nuestra cuenta, haremos zoom y encuadre hasta tener en pantalla la zona en la que estamos interesados. Al pulsar la pestaña *EXPORTAR*, aparece una caja con los cuatro valores que definen la extensión del área de descarga y que coincide exactamente con lo que estas viendo en pantalla del mapa en ese momento. 

Si la descarga la vamos a hacer directamente desde el mapa, podemos en ese momento hacer *Click* en '*Seleccionar manualmente un área diferente*' y entones dibujar un área para seleccionar exactamente la región deseada.

Otra manera de localizar las coordenadas de la zona que queremos descargar es abrir la página Web `http://www.informationfreeway.org/ <http://www.informationfreeway.org/>`_ y hacer zoom a la zona de interés. En la parte inferior derecha de la pantalla aparecen las coordenadas correspondientes a'la posición del ratón. Se tratará de anotar las correspondientes a las esquinas del area en el que estemos interesados.










