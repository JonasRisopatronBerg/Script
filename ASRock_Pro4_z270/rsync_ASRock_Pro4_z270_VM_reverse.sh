rsync -avx --delete --exclude-from=/home/jonas/Script/ExcluderSyncHome --exclude='VirtualBox VMs' /home/${USER}/VirtualBoxShare /home/${USER}/ && >> /home/jonas/Logs/rSync.log
