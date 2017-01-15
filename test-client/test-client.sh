#!/bin/bash
set -x
CLIENT_ID=80363411-f180-4a51-80ba-9b63770b9ac4
RESOURCE_URL=https://rcbj0001-api.rcbj.net
USERNAME_=test1@rcbj.net
PASSWORD_="********************"
TENANT_ID=75de389c-8f67-4084-9065-3a9c31e1db13
ASSERTION=`curl -X POST "https://login.microsoftonline.com/${TENANT_ID}/oauth2/token" -d "grant_type=password&client_id=${CLIENT_ID}&resource=${RESOURCE_URL}&username=${USERNAME_}&password=${PASSWORD_}" --insecure| awk -F"," '{print $(NF-1)}' | awk -F":" '{print $2}' | sed 's/\}//g' | sed 's/\"//g'`
if [ -z "${ASSERTION}" ];
then
  echo "ASSERTION is blank."
  exit 0
fi
echo "ASSERTION=${ASSERTION}"
echo "Making API Call."
curl -X GET "https://rcbjbluemars-test.apigee.net/time/utc/now.json" -H "Authorization:Bearer ${ASSERTION}" --insecure -D headers.out
echo
exit 0
