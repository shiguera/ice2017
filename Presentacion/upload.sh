#!/bin/bash
# Fichero de backup en el disco duro portatil al


BACKUP_DIRECTORY="root@82.223.107.55:/var/www/vhosts/mercatorlab.com/httpdocs/ice2016"
SHIGUERA_DIRECTORY="/home/shiguera/ownCloud/tesis/articles/CursosICE/CursoOSM_2016/Presentacion/*"

rsync -raP $SHIGUERA_DIRECTORY $BACKUP_DIRECTORY/




