#!/bin/sh
# Stamp a new version so installed home-screen apps pick up the update.
V=$(date -u +%Y%m%d%H%M%S)
sed -i "s/const APP_VERSION = \"[^\"]*\"/const APP_VERSION = \"$V\"/" index.html
printf '{"v":"%s"}\n' "$V" > version.json
echo "version $V"
