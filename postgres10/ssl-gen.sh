#!/bin/bash
openssl genrsa -out server.key 2048
openssl rsa -in server.key -out server.key
chmod 400 server.key
openssl req -new -key server.key -days 3650 -out server.crt -x509
