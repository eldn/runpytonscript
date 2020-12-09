#!/bin/bash
pip3 install -r "/appdir/config/requirements.txt"
touch "/appdir/cron.log"
#crontab "/appdir/config/cron" root
cd "/appdir"
chmod -R +X "/appdir/collectors/"
#cron -f
#service start cron
cd "/appdir/collectors"
/usr/local/bin/python3 ddns//godaddy-publicip-updater.py
#tail -f /var/log/faillog > /tmp/faillog
