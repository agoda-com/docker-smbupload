#!/bin/bash


FILE_NAME_WIN=$(echo $FILE_NAME | tr '[:$]' '_')
echo "upload $FILE_NAME to //$SMB_HOST/$SMB_SHARE/$SMB_DIR/$FILE_NAME_WIN"
echo -e "username = ${SMB_USERNAME}\npassword = ${SMB_PASSWORD}\ndomain = ${SMB_DOMAIN}" > /tmp/auth
smbclient //$SMB_HOST/$SMB_SHARE  -A /tmp/auth -c "cd $SMB_DIR;  lcd /upload; put $FILE_NAME $FILE_NAME_WIN;  exit"
