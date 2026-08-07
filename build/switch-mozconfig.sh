#!/bin/bash
set -e

if [[ -f mozconfig-arm64 ]]; then
  mv mozconfig mozconfig-x86
  mv mozconfig-arm64 mozconfig
  echo "Switched to arm64 in mozconfig"
elif [[ -f mozconfig-x86 ]]; then
  mv mozconfig mozconfig-arm64
  mv mozconfig-x86 mozconfig
  echo "Switched to x86 in mozconfig"
else
  echo "Error: neither mozconfig-arm64 nor mozconfig-x86 found"
  exit 1
fi
