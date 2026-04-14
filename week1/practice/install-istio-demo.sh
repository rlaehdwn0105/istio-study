#!/usr/bin/env bash

set -euo pipefail

# Set ISTIO_VERSION explicitly if you want a newer supported release.
# This default is a workspace baseline, not a guarantee of "latest".
ISTIO_VERSION="${ISTIO_VERSION:-1.29.0}"

curl -L https://istio.io/downloadIstio | ISTIO_VERSION="${ISTIO_VERSION}" sh -
"istio-${ISTIO_VERSION}/bin/istioctl" install --set profile=demo -y
