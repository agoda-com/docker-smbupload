#!/bin/bash

echo "uploading ${FILE_NAME} to //${SMB_HOST}/${SMB_SHARE}/${SMB_DIR}/${FILE_NAME_WIN}"
echo -e "username = ${SMB_USERNAME}\npassword = ${SMB_PASSWORD}\ndomain = ${SMB_DOMAIN}" > /tmp/auth
smbclient //${SMB_HOST}/${SMB_SHARE} -A /tmp/auth -c "prompt OFF; recurse ON; mkdir ${SMB_DIR}; cd ${SMB_DIR}; lcd /upload; mput *; exit"
