#!/bin/bash

curl --fail  https://jabooi.github.io/testapp/  # --fail = curl varnar om den den inte når sidan
if [[ $? -ne 0 ]]; then
        echo "The application has been deployed, but it cannot be reached"
        exit 1
else
	echo "Website could be reached, assuming success!"
	exit 0

fi

