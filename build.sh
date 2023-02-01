#!/bin/bash
openssl req -new -sha256 -key default.key -out default.csr -subj "//CN=siteweb.go"
openssl x509 -req -in default.csr -CA LocalRootCA.crt -CAkey LocalRootCA.key -CAcreateserial -days 71200 -out default.crt -extfile default.ini



