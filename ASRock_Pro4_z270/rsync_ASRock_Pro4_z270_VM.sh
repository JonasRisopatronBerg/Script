rsync -avx --delete --exclude-from=/home/jonas/Script/ExcluderSyncHome --exclude='VirtualBox VMs' /home/${USER}/ /home/${USER}/VirtualBoxShare && >> /home/jonas/Logs/rSync.log
