#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

tmp=$(mktemp)

cp $SCRIPT_DIR/smarter-device-manager/smarter-device-management-pod.yaml $tmp

sed -i '/  nodeName/c\#' $tmp

cat $tmp
