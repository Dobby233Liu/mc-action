#!/bin/sh

mc_endpoint="https://s3-api.us-geo.objectstorage.softlayer.net"
mc_hmac_key="aa1d6f56b97443c185d7282c22adc4a7"
mc_hmac_secret="29fc312082d26720ceeec6e89630f6d2fc382a96c7a72b1c"
mc_alias="ibm"
mc_bucket="filepub"
mc_filename="ddlc_pkg.zip"

echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> Installing Minio S3 Client"

wget "https://dl.minio.io/client/mc/release/linux-amd64/mc" && \

chmod +x mc && \

cp -vR mc /usr/bin/mc && \

mc config host add $mc_alias $mc_endpoint $mc_hmac_key $mc_hmac_secret && \

mc ls $mc_alias;

mc cp "$mc_alias/$mc_bucket/$mc_filename" ./
unzip $mc_filename -d ./game
exit 0
