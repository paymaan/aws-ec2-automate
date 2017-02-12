#!/bin/bash

commandType=$1
artifactsPath=~/aws-automate-ec2-artifacts

# command input checking
if ! [[ "$commandType" = "configure"          \
              || "$commandType" = "launch"    \
              || "$commandType" = "terminate" \
              || "$commandType" = "status" ]]; then
    echo "usage: ./aws-ec2-automate.sh configure|launch|terminate|status"
    exit
fi

# configure
configFilePath=${artifactsPath}/config.cfg
if [[ "$commandType" = "configure" ]]; then
    if ! [[ -f "$configFilePath" ]]; then
        mkdir -p $artifactsPath && touch $configFilePath
    fi

    read -p 'image_id: ' imageId
    read -p 'instance_id: ' instanceId
    read -p 'key_name: ' keyName

    echo "image_id:${imageId};instance_id:${instanceId};key_name:${keyName}" > ${configFilePath}
fi

exit 0
