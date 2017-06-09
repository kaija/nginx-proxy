#!/bin/bash


mkdir -p /etc/nginx/ssl

echo "[nginx-proxy] decode ssl certificate and private key"

[[ -v NGX_SSL_CERT ]] && echo $NGX_SSL_CERT | base64 -d > /etc/nginx/ssl/ssl_cert.pem
[[ -v NGX_SSL_PKEY ]] && echo $NGX_SSL_PKEY | base64 -d > /etc/nginx/ssl/ssl_pkey.pem
[[ -v NGX_SSL_CA ]] && echo $NGX_SSL_CA | base64 -d > /etc/nginx/ssl/ssl_ca.pem


until confd -onetime -backend env ; do
	echo "[confd] waiting for confd configure."
    sleep 3
done


nginx -g 'daemon off;';
