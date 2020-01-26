#!/bin/bash

curl --fail  $PAGE_URL  # --fail = curl varnar om den den inte når sidan
if [[ $? -ne 0 ]]; then
        echo "The application has been deployed, but it cannot be reached"
        exit 1
else
	echo "$PAGE_URL could be reached, assuming success!"
	exit 0

fi

