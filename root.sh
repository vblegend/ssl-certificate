#!/bin/bash
openssl genrsa -out LocalRootCA.key 2048
openssl req -sha256 -new -nodes -x509 -days 3650 -key LocalRootCA.key -out LocalRootCA.crt -subj "//CN=LocalRootCA"
# 私钥
openssl genrsa -out default.key 2048