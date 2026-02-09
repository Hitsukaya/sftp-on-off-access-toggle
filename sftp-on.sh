#!/bin/bash

TARGET="/path/html"
USER="name"

echo "[+] Enabling SFTP write access for $USER on $TARGET"

setfacl -R -m u:$USER:rwx "$TARGET"
setfacl -R -d -m u:$USER:rwx "$TARGET"

echo "[✓] SFTP write access ENABLED"
