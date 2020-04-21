#!/bin/sh -l

export KUBECONFIG=/var/local/kubeconfig
echo "${1}" > $KUBECONFIG

sh -c "$2"
