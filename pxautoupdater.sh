#!/bin/bash

# Check for root
  if [[ $EUID -ne 0 ]]; then
    echo    
    echo ' [!] This tool must be run as root to schedule automatic Pwnix updates [!]'
    echo    
  exit 1
  fi
ln -s /opt/pwnix/chef/update.sh /etc/cron.daily/autoupdate
clear
echo "Pwnix updates scheduled daily"
