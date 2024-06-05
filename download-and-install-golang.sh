#!/bin/bash

set -x 

GO_LATEST_STABLE_VERSION=$(curl https://go.dev/VERSION?m=text | head -n1 )

#Download the latest go version
wget --directory-prefix /tmp https://go.dev/dl/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.gz

#Remove previous go installations and install the latest one
rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.gz

#Delete the tar.gz file
rm -rf /tmp/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.*


