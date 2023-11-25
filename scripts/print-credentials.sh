#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

echo "K8s dashboard: $(kubectl get secret -n kubernetes-dashboard dashboard-admin-token -o jsonpath='{.data.token}' | base64 -d)"
