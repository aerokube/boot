#!/bin/bash
set -e

VERSION=$1

mkdir -p dist
cd dist
for osArch in "linux_amd64" "darwin_amd64" "darwin_arm64" "windows_amd64"; do
  os=$(echo "$osArch" | awk -F "_" '{print $1;}')
  zipFile='kubectl-vm_'"$VERSION"'_'"$osArch.zip"
  downloadURL="https://download.aerokube.com/boot/kubectl-vm/$VERSION/$zipFile"
  outputFile="kubectl-vm_$osArch"
  if [ "$os" == "windows" ]; then
    outputFile="$outputFile.exe"
  fi
  curl -s "$downloadURL" | zcat > "$outputFile"
  chmod 755 "$outputFile"
done
