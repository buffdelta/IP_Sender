#!/bin/bash

EMAIL_ADDRESS='yourEmail@gmail.com'
APP_PASSWORD='yourAppPassword'          # https://myaccount.google.com/apppasswords
CURRENT_IP=$(curl https://ipinfo.io/ip)

/usr/bin/curl --url 'smtps://smtp.gmail.com:465' \
    --ssl-reqd \
    --user "$EMAIL_ADDRESS:$APP_PASSWORD" \
    --mail-from "$EMAIL_ADDRESS" \
    --mail-rcpt "$EMAIL_ADDRESS" \
    -T <(echo -e "From: $EMAIL_ADDRESS\nTo: $EMAIL_ADDRESS\nSubject: Current IP\n\n$CURRENT_IP")
