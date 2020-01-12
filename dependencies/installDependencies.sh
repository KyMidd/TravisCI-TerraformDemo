#!/bin/bash -eux

# Exit if any command returns a non-0 code
set -ev

# Set Terraform version, get version from first argument of caller
tf_version=$1

# Download and unzip terraform
wget https://releases.hashicorp.com/terraform/"$tf_version"/terraform_"$tf_version"_linux_amd64.zip
unzip terraform_"$tf_version"_linux_amd64.zip

# Move terraform to /usr/local/bin
sudo mv terraform /usr/local/bin/

# Remove downloaded file
rm terraform_"$tf_version"_linux_amd64.zip
