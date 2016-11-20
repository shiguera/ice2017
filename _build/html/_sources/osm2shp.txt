.. osm2shp

ogr2ogr
=======

Se puede utilizar GDAL para convertir ficheros *.osm* en capas shapefile. Suponiendo que tengamos un fichero *.osm* llamado 'm607.osm', el comando para extraer las capas shapefile será::

  ogr2ogr m607 -f "ESRI Shapefile" m607.osm

La estructura del comando es::

  ogr2ogr destination_file_name -f "ESRI Shapefile" source_file_name

Elresultado será un directorio de nombre 'destination_file_name' que tendrá varias capas shapefile con los datos del fichero osm: points.shp, lines.shp, multilinestrings.shp, multipolygons.shp




