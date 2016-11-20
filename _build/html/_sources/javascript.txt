.. Javascript

Javascript
==========

Las librerías *Openlayers* y *Leaflet* tienen la posiblidad de trabajar con datos procedentes de OpenStreetMap, tanto en formato Raster como en formato vectorial. 

OpenLayers
----------

El wiki deOpenStreetMap ofrece ejemplos sencillos de consultas en OpenLayers. Puedes consultar la siguiente dirección:

`http://wiki.openstreetmap.org/wiki/OpenLayers_Simple_Example <http://wiki.openstreetmap.org/wiki/OpenLayers_Simple_Example>`_

La documentación de OpenLayers 3 ofrece un buen ejemplo de consulta de datos vectoriales con OpenLayers 3. Se puede consultar en lasiguiente dirección:

`http://openlayers.org/en/latest/examples/vector-osm.html <http://openlayers.org/en/latest/examples/vector-osm.html>`_

Para ejemplos más complejos una buena forma de aprender es realizar la correspondiente consulta *Overpass API* en la página `http://overpass-api.de/query_form.html <http://overpass-api.de/query_form.html>`_ y pedirle que nos dé la salida en OpenLayers. Sobre dicha salida podemos examinar el código fuente para comprender los conceptos y librerías utilizadas. Un ejemplo podría ser:

`http://overpass-api.de/api/convert?data=%28node%2841.9837%2C2.8243%2C41.9866%2C2.8307%29%5Bamenity%3Drestaurant%5D%3Bnode%2841.9837%2C2.8243%2C41.9866%2C2.8307%29%5Bamenity%3Dpub%5D%29%3Bout%3B&target=ol_fixed <http://overpass-api.de/api/convert?data=%28node%2841.9837%2C2.8243%2C41.9866%2C2.8307%29%5Bamenity%3Drestaurant%5D%3Bnode%2841.9837%2C2.8243%2C41.9866%2C2.8307%29%5Bamenity%3Dpub%5D%29%3Bout%3B&target=ol_fixed>`_

.. image:: _static/openlayers.png
   :width: 600px
   :alt: openlayers

Leaflet
-------

La siguiente página de Mapbox ofrece un ejemplo para descargar datos vectoriales de OpenStreetMap:

`https://www.mapbox.com/mapbox.js/example/v1.0.0/leaflet-osm/ <https://www.mapbox.com/mapbox.js/example/v1.0.0/leaflet-osm/>`_


