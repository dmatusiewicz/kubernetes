#!/bin/bash

echo ${CERTS_BUCKET_NAME} > /tmp/test.txt
mkidr -p ~/certs
CERTS_FOLDER="~/certs"
aws s3 sync s3://${CERTS_BUCKET_NAME}/ $${CERTS_FOLDER}
