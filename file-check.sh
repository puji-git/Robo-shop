#!/bin/bash

SERVERS="server1 server2"
FILE_PATH="/home/ec2-user/puji"
USERNAME="ec2-user"

for SERVER in $SERVERS; do
    echo "Checking $SERVER..."
    ssh "$USERNAME@$SERVER" "[ -f $FILE_PATH ] && echo '$SERVER: File exists' || echo '$SERVER: File NOT found'"
done