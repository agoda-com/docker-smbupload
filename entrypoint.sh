#!/bin/bash

FILE_NAME_WIN=$(echo ${FILE_NAME} | tr '[:$]' '_')
echo "uploading ${FILE_NAME} to //${SMB_HOST}/${SMB_SHARE}/${SMB_DIR}/${FILE_NAME_WIN}"
echo -e "username = ${SMB_USERNAME}\npassword = ${SMB_PASSWORD}\ndomain = ${SMB_DOMAIN}" > /tmp/auth
smbclient //${SMB_HOST}/${SMB_SHARE} -A /tmp/auth -c "mkdir ${SMB_DIR}; put /upload/${FILE_NAME} ${SMB_DIR}/${FILE_NAME_WIN}; exit"
