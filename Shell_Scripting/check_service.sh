#!/bin/bash

check_service(){
status=$(systemctl is-active ssh)
if(( "$status" == "active" ))
then
echo "ssh service is active"
else
echo "ssh service is inactive"
fi
}

check_service_2() {

    if systemctl is-active --quiet ssh
    then
        echo "SSH service is ACTIVE"
    else
        echo "SSH service is INACTIVE"
    fi
}

check_service
check_service_2


