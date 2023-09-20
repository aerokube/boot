#!/bin/bash
set -e

VERSION=$1

mkdir -p dist
cd dist
for osArch in "linux/amd64" "darwin/amd64" "darwin/arm64" "windows/amd64"; do
  os=$(echo "$osArch" | awk -F "_" '{print $1;}')
  arch=$(echo "$osArch" | awk -F "_" '{print $2;}')
  zipFile='kubectl-vm_'"$VERSION"'_'"$osArch.zip"
  downloadURL="https://download.aerokube.com/boot/kubectl-vm/$VERSION/$zipFile"
  outputFile='kubectl-vm_'"$os"'_'"$arch"
  if [ "$os" == "windows" ]; then
    outputFile="$outputFile.exe"
  fi
  curl -s "$downloadURL" | zcat >> "$outputFile"
  chmod 755 "$outputFile"
done
