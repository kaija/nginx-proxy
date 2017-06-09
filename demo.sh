#!/bin/bash


docker run -it -p 80:80 -p 443:443 -p 8443:8443 -e "NGX_PROXY_PASS=backend:80" -e "NGX_LISTENS=80;443 ssl;8443 ssl proxy_protocol;[::]:8443 ssl proxy_protocol" -e "NGX_SERVERS=localhost;_" nginx-proxy bash

