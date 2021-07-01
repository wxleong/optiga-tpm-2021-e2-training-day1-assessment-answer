#!/bin/sh -x

# Generate CA
openssl req -x509 -sha256 -nodes -days 365 -subj "/CN=CA/O=Infineon/C=SG" -newkey rsa:2048 -keyout remote-ca.key -out remote-ca.crt

# Build server
gcc -Wall -o server server.c -lssl -lcrypto
