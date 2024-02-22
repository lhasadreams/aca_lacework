#!/bin/sh

# Lacework Agent: configure and start the data collector
chmod +x /var/lib/lacework-backup/**/datacollector 
/var/lib/lacework-backup/**/datacollector &

python app.py