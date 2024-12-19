#!/usr/bin/env bash

# script to test ad-auth, because M$ is clueless and msal4j is a fucking mess and they never document which magic mix is supposed to work

DBHOST=$1
IMG=test

docker build . -t ${IMG}

docker run --network=host --rm -e AZURE_TENANT_ID=$(uuid) -eAZURE_CLIENT_ID=$(uuid) -eAZURE_CLIENT_SECRET=$(uuid) -eFLYWAY_URL="jdbc:sqlserver://${DBHOST};databaseName=refapp;encrypt=false;authentication=ActiveDirectoryDefault" ${IMG} info
