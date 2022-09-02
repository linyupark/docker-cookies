#!/bin/sh

readonly DOMAIN=megalink.test

mkdir -p ./${DOMAIN}
echo "[dn]\nCN=${DOMAIN}\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:${DOMAIN}\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth" > ./config

openssl req -x509 -out $DOMAIN/${DOMAIN}.crt -keyout $DOMAIN/${DOMAIN}.key -newkey rsa:2048 -nodes -sha256 -subj "/CN=${DOMAIN}" -extensions EXT -config ./config

rm ./config

# chrome -> chrome://net-internals/#hsts