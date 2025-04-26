#!/bin/bash

mongodump -v --uri="{{ backup_mongodb.uri }}" \
		        --archive=/opt/backup_db/backup_$(date  '+%d%m%Y')