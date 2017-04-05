#!/bin/bash - 
#===============================================================================
#
#          FILE: SystemUpdate.sh
# 
#         USAGE: ./SystemUpdate.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Jonas Risopatron Berg (), jonasrisopatronberg@gmail.com
#  ORGANIZATION: 
#       CREATED: 29. okt. 2016 05:05
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

# Sync and update Official
sudo pacman -Syyu --color always

# Sync and update AUR
yaourt -Syyu --aur --color
#yaourt -Syyu

# Remove orphans
sudo pacman -Rs $(pacman -Qdtq) --color always

# Cleanup
#sudo pacman -c
#yaourt -c

# Update GRUB
#sudo update-grub
# Update bootloader

# Rank mirrors
sudo pacman-optimize && sudo sync

