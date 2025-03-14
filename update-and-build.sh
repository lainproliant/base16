#!/bin/sh
sudo pip install pybase16-builder
git submodule update --init --recursive
rm -rf ./output ./schemes ./sources ./templates
mkdir -p /tmp/go
GOPATH=/tmp/go go install github.com/thefryscorer/schemer2@latest
chown -R lainproliant /tmp/go
chmod -R u+rwx /tmp/go
cp /tmp/go/bin/schemer2 .
rm -rf /tmp/go
pybase16 update -c
pybase16 build
