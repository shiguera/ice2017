#!/bin/bash
# Fichero de backup en el disco duro portatil al


BACKUP_DIRECTORY="root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/geoinquietos/cayapas"
SHIGUERA_DIRECTORY="/home/shiguera/ownCloud/tesis/articles/Cartomundo/Presentacion"

rsync -raP $SHIGUERA_DIRECTORY $BACKUP_DIRECTORY/

scp /home/shiguera/ownCloud/tesis/articles/Cartomundo/Presentacion/index.html root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/geoinquietos/cayapas



