#!/bin/bash - 
#===============================================================================
#
#          FILE: SysBak.sh
# 
#         USAGE: ./SysBak.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jonas Risopatron Berg (), jonasrisopatronberg@gmail.com
#  ORGANIZATION: 
#       CREATED: 27. okt. 2016 22:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

### Variables ###

SourceDir0=/data/Music
DestinationDir=/data/Backup
SnapshotFile=/home/jonas/Script/${HOSTNAME}/SystemBackup_${HOSTNAME}_Music.snapshot.file
Log=/home/jonas/Logs/SystemBackup_${HOSTNAME}.log
LvlCountFile=/home/jonas/Script/${HOSTNAME}/SystemBackup_${HOSTNAME}_Music.LvlCount
LvlCount=$(cat $LvlCountFile)
StartTime=$(date +%Y-%m-%d_%T_%Z_%:::z)

### Main ###

tar --listed-incremental=$SnapshotFile \
	--one-file-system \
	--index-file=$Log \
	-cpvzf \
	${DestinationDir}/${HOSTNAME}_Music.lvl.${LvlCount}.${StartTime}.bak.tar.gz \
	$SourceDir0

echo $(($LvlCount + 1)) > $LvlCountFile
