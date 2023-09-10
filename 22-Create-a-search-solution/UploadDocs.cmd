@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=3321c4d4-e1fd-4338-881d-9e84264fd105
set azure_storage_account=ravitejastorage
set azure_storage_key=Mv7d7XP7FT24OruACWzxCQsHgkiSllbXSDVDb8TalJBEFLtfr8Sobk07CrxpM1fffPmfUO9ueaUf+AStACeZGA==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
