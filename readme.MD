# Scripts for Azure CLI

This repository currently only contains one script, but will soon be adding Terraform templates for Azure.

The `list_images_in_acr.sh` script will generate a list of ALL images in an Azure Container Repository using an IMAGE_REPO:TAG format. This may be handy if you need to do a little cleanup of you container registries as you can remove the images you want to keep from the file that is generated, and create a script to delete the remaining images.

## Instructions

Given that you are logged into the Azure CLI and have the right credentials, simply execute the script using:

```
. ./list_images_in_acr.sh
```

Depending on how large the container registry is, it could take a while to complete, but once it's done it will generate a file specified by the user in the script itself as the `destination` variable.