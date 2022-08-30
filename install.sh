#!/bin/bash
#
# 4G only service to avoid max stingray/IMSI catchers
#
# can be run as command, or with this install.sh script,
# installed as a service (you can disable, stop (stop sets 4G preferred, 3G possible)
#
# righttoprivacy[at]tutanota.com
#
# Check Blog / Videos / Tutorials (Public): https://buymeacoffee.com/politictech/posts
#

echo -e "INSTALLING 4G-ONLY SERVICE...\n"
cp 4g-only.service /etc/systemd/system/4g-only.service
cp 4g-only /usr/bin/4g-only
chmod +x /usr/bin/4g-only

# enable service
sudo systemctl daemon-reload
sudo systemctl enable 4g-only.service

echo -e "4G ONLY SERVICE ENABLED FOR NEXT BOOT...\n" && sleep .5
echo -e "If you would like to start it now, run:\n"
echo -e "sudo systemctl start 4g-only.service\n"
