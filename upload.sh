#!/bin/bash
# Fichero de backup en el disco duro portatil al


# Presentaciones específicas para el curso del ICE
BACKUP_DIRECTORY="root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/ice2017"
SHIGUERA_DIRECTORY="/home/shiguera/ownCloud/tesis/articles/CursosICE/CursoOSM_2017/Presentacion/*"
rsync -raP $SHIGUERA_DIRECTORY $BACKUP_DIRECTORY/

# Presentación estado actual de OSM Siglibre 2017
BACKUP_DIRECTORY="root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/osm2017"
SHIGUERA_DIRECTORY="/home/shiguera/ownCloud/tesis/articles/SigLibre2017/Presentacion_OSM/*"
rsync -raP $SHIGUERA_DIRECTORY $BACKUP_DIRECTORY/

# Taller HOT Caminos Diciembre 2017
BACKUP_DIRECTORY="root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/hotcaminos2017"
SHIGUERA_DIRECTORY="/home/shiguera/ownCloud/tesis/articles/TallerHOTCaminos_Nov2017/*"
rsync -raP $SHIGUERA_DIRECTORY $BACKUP_DIRECTORY/
