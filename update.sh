#!/usr/bin/env sh

set -e

if [ $# -eq 0 ] ; then
    echo "Usage: ./update.sh <tag or branch>"
    exit
fi

export VERSION=$1

EXEC_NAME='gomosesgo'
echo "Fetching and building $EXEC_NAME $VERSION..."
curl -o $EXEC_NAME \
     -L https://github.com/qntfy/gomosesgo/releases/download/$VERSION/gomosesgo_linux_amd64
chmod +x $EXEC_NAME

