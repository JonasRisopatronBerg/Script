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

SourceDir0=/
SourceDir1=/boot
SourceDir2=/var
SourceDir3=/home
SourceDir4=/data
ExcludeFile=/data/Script/SystemBackupExclude
DestinationDir=/data/Backup
SnapshotFile=/home/jonas/Script/${HOSTNAME}/SystemBackup_${HOSTNAME}.snapshot.file
Log=/home/jonas/Logs/SystemBackup_${HOSTNAME}.log
LvlCountFile=/home/jonas/Script/${HOSTNAME}/SystemBackup_${HOSTNAME}.LvlCount
LvlCount=$(cat $LvlCountFile)
StartTime=$(date +%Y-%m-%d_%T_%Z_%:::z)

### Main ###

cp $Log ${Log}.clone

tar --listed-incremental=$SnapshotFile \
	--exclude-from=$ExcludeFile \
	--one-file-system \
	--index-file=$Log \
	-cpvzf \
	${DestinationDir}/${HOSTNAME}.lvl.${LvlCount}.${StartTime}.bak.tar.gz \
	$SourceDir0 $SourceDir1 $SourceDir2 $SourceDir3 $SourceDir4

echo $(($LvlCount + 1)) > $LvlCountFile
