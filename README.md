# docker-smbupload
Simple Docker to upload a single file

How to use
docker run -it --rm -v /dir/where/is/my/file/to/upload:/upload -e SMB_HOST=my.smb.host -e SMB_USERNAME=user -e SMB_PASSWORD=pass -e SMB_SHARE=myshare -e SMB_DIR=share-directory -e FILE_NAME=file-to.upload segator/smb-upload
