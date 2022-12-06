#!/bin/bash
    
# Given that you are logged into the Azure CLI and have the right credentials, the only variables you need to set below are registry_name and destination to store the list - a txt file works fine. 

registry_name='REGISTRY_NAME'
destination='LOCATION_TO_STORE_LIST'
az acr login --name $registry_name
touch $destination

repos="$(az acr repository list -n $registry_name --output tsv)"

for i in $repos; do
    images="$(az acr repository show-tags -n $registry_name --repository $i --output tsv --orderby time_desc)"
    for j in $images; do
        echo $i":"$j >> $destination;
    done;
done;
