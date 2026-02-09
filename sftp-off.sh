#!/bin/bash

TARGET="/path/html"
USER="name"

echo "[-] Disabling SFTP write access for $USER on $TARGET"

setfacl -R -x u:$USER "$TARGET"
setfacl -R -k "$TARGET"

echo "[✓] SFTP write access DISABLED"
