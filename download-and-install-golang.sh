#!/bin/bash

GO_LATEST_STABLE_VERSION=$(curl https://go.dev/VERSION?m=text)

#Download the latest go version
wget --directory-prefix /tmp https://go.dev/dl/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.gz

#Remove previous go installations and install the latest one
rm -rf /usr/local/go && tar -C /usr/local -xzf /tmp/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.gz

#Add binary path into /etc/profile
echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile && source /etc/profile

#Delete the tar.gz file
rm -rf /tmp/$GO_LATEST_STABLE_VERSION.linux-amd64.tar.*


