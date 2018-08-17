#!/bin/bash
openssl ecparam -name secp256k1 -genkey -noout -out server.key
chmod 400 server.key
openssl req -new -key server.key -days 3650 -out server.crt -x509
