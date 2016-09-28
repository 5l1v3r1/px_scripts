#!/bin/bash

# Check for root
  if [[ $EUID -ne 0 ]]; then
    echo    
    echo ' [!] This tool must be run as root to schedule automatic Pwnix updates [!]'
    echo    
  exit 1
  fi


touch /etc/cron.daily/pxautoupdater

echo -e "#!/bin/bash\ncurl -s localhost:8243/api/v2/plugins/system/update?target=stable" > /etc/cron.daily/pxautoupdater

chmod +x /etc/cron.daily/pxautoupdater
clear
echo "Pwnix updates scheduled daily"
