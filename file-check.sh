#!/bin/bash

SERVERS="35.153.207.74 100.24.10.82"
FILE_PATH="/home/ec2-user/puji"
USERNAME="ec2-user"

for SERVER in $SERVERS; do
    echo "Checking $SERVER..."
    ssh "$USERNAME@$SERVER" "[ -f $FILE_PATH ] && echo '$SERVER: File exists' || echo '$SERVER: File NOT found'"
done