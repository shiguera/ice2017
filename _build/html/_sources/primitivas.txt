# primitivas

Estructura de la información en OSM
===================================

OSM es una base de datos de información geográfica. Los elementos o fenómenos existente en la realidad se modelizan mediante la incorporación a la base de datos de dos niveles de información para cada uno de ellos:

* **Información espacial**: contiene la información relativa a la geometría y posición del fenómeno. Responde a la pregunta **¿Dónde?**

* **Información temática**: contiene las características y propiedades del fenómeno. Responde a la pregunta **¿Qué?**

En la base de datos de OSM a cada fenómeno de la realidad que se quiera modelizar se le asigna una **primitiva geométrica** que le dota de la información espacial. Hay tres tipos de primitivas geométricas:

* **Nodes**: corresponden a fenómenos cuya geometría se modeliza con un punto
* **Ways**: corresponden a fenómenos cuya geometría se modeliza mediante una línea o un polígono.
* **Relations**: combinan Nodes, Ways y otras Relations para definir geometrías o elementos complejos

La información temática se incorpora al modelo mediante etiquetas, **tags**, que son parejas de cadenas de texto en la forma *key-value*. Cada primitiva geométrica lleva asociadas un número indeterminado de etiquetas que permiten definir su información temática. Se pueden consultar las etiquetas más frecuentes en la página:

`http://wiki.openstreetmap.org/wiki/Map_Features <http://wiki.openstreetmap.org/wiki/Map_Features>`_

Cada primitiva geométrica tiene una serie de **atributos** que permiten caracterizar a los elementos que representan:

* **id**: Es el identificativo del elemento en la base de datos. A cada elemento le corresponde un *id* único, mediante el cuál es posible identificarlo en la base de datos. Hay tablas diferentes en la base de datos para los elementos del tipo *node*, *way* o *relation*, y cada una de ellas tiene su lista de *id's*. Por ello, puede suceder que un elemento *node* tenga el mismo *id* que un elemento *way*, por ejemplo, pero al tratarse de distinto tipo de elemento, la identificación sigue siendo única.

* **version**: la primera vez que se graba un elemento en la base de datos se le asigna el número de versión *1*. Este número de versión se va incrementando cada vez que el elemento se actualice o se le realicen modificaciones en sus atributos o tags.

* **changeset**: Cada vez que un usuario realiza una serie de cambios y los sube a la base de datos de OSM, dicho conjunto de cambios se identifican con un identificador que quedará registrado en la base de datos de OSM, junto con el usuario y la fecha en que se han realizado. El identificativo del último conjunto de cambios que ha modificado cada elemento se guarda en este atributo.

* **user**: este atributo guarda el nombre del usuario que ha realizado la última edición o actualización del elemento.

* **uid**: este atributo es el identificativo del usuario anterior, en la base de datos de usuarios de OSM

* **visible**: si el atributo tiene valor *true*, el elemento se mostrará en los renderizadores, en caso contrario, el elemento no se visualizará.

* **timestamp**: es la fecha de la última edición o modificación realizada en el elemento. Junto con los atributos *changeset*, *user* y *uid* permiten identificar totálmente la última modificación que se ha realizado en un elemento y deshacerla, si ello fuera preciso.

Además de estos atributos, que son comunes a los tres tipos de primitivas geométricas (*nodes*, *ways* y *relations*), cada elemento tiene otros atributos específicos de su tipo, que describimos a continuación.


Node
----

Un Node representa una geometría puntual. Cada *node* consta de una serie de atributos y una colección de *tags*. Los atributos que utilizan los elementos *node* son:

* **lat**: Latitud geográfica del punto en el sistema de referencia *WGS84*. Se utilizan siete decimales significativos, que equivalen aproximadamente a un centímetro de precisión.
* **lon**: longitud geográfica del punto en el sistema de referencia *WGS84*. Al igual que con la latitud, se utilizan siete decimales, que confieren una precisión de aproximadamente un centímetro en el ecuador. 
* **version**: Es la versión del nodo 


Un ejemplo de un Node en formato *OSM*::

  <node id="25496583" lat="51.5173639" lon="-0.140043" version="1" changeset="203496"
        user="80n" uid="1238" visible="true" timestamp="2007-01-28T11:40:26Z"/>
    <tag k="highway" v="traffic_signals">
  </node>

Way
---

Representa una geometría de *Linestring*. Consta de una lista de Nodes identificados por su *Id* y una lista de etiquetas. Un ejemplo de Way en formato *OSM*::

  <way id="5090250" visible="true" timestamp="2009-01-19T19:07:25Z" version="8"
        changeset="816806" user="Blumpsy" uid="64226">
    <nd ref="822403"/>
    <nd ref="21533912"/>
    <nd ref="821601"/>
    <nd ref="21533910"/>
    <nd ref="135791608"/>
    <nd ref="333725784"/>
    <nd ref="333725781"/>
    <nd ref="823771"/>
    <tag k="highway" v="residential"/>
    <tag k="name" v="Clipstone Street"/>
    <tag k="oneway" v="yes"/>
  </way>

Si el último punto de un Way coincide con el primero, entonces se trata de una línea cerrada. Según el valor de las etiquetas puede tratarse de un area o simplemente deuna línea cerrada.

Relation
--------

Sirven para representar entidades más complejas. Consta de una lista de elementos *member* cada uno de los cuales tiene su *type*, su *id* y su *role*, y una lista de etiquetas. Las *Relations* aceptadas por los renderers se pueden consultar en:

`http://wiki.openstreetmap.org/wiki/Types_of_relation <http://wiki.openstreetmap.org/wiki/Types_of_relation>`_

Una *Relation* de uso común es la *multipolygon*, con sus *roles* *outer* e *inner* que permite definir edificios u otras superficies con huecos. Un ejemplo sería::

  <relation id="1">
    <tag k="type" v="multipolygon" />
    <member type="way" id="1" role="outer" />
    <member type="way" id="2" role="inner" />
  </relation>

.. image:: _static/multipolygon.png
   :width: 400px
   :alt: multipolygon
   :align: center

Hay combinaciones más complejas de *multipolygon*. La *Relation* *multipolygon* se puede consultar en el siguiente enlace:

`http://wiki.openstreetmap.org/wiki/Relation:multipolygon <http://wiki.openstreetmap.org/wiki/Relation:multipolygon>`_



