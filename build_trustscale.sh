#!/bin/bash

# Build the packages

go install tailscale.com/cmd/tailscale{,d}

./build_dist.sh tailscale.com/cmd/tailscale
./build_dist.sh tailscale.com/cmd/tailscaled

# Zip required files

zip -j trustscale/trustscale.zip tailscale tailscaled trustscale/tailscaled.service

# Delete binaries

rm -rf tailscale tailscaled

exit 0
