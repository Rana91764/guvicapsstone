#!/bin/bash
 
# Variables
echo "Current Branch: $BRANCH_NAME"
 
if [ "$BRANCH_NAME" == "dev" ]; then
    docker build -t rana1993/dev_guvi . 
    docker push rana1993/dev_guvi:latest
elif [ "$BRANCH_NAME" == "master" ]; then
    docker build -t rana1993/prod_guvi .
    docker push rana1993/prod_guvi:latest
fi