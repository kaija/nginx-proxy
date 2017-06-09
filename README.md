# nginx-proxy
Nginx Proxy for AWS ECS


## Configure environment variables

```
NGX_SSL_CERT   base64 encoded SSL certificate
NGX_SSL_PKEY   base64 encoded SSL certificate private key
NGX_SSL_CA     base64 encoded SSL CA file
NGX_LISTENS    listen port and protocol. multiple list port should separated by ';'
NGX_SERVERS    nginx server name. multiple server name should separated by ';'
```

## Encode certificate / private key by base64

```bash
base64 ssl.crt | tr -d '\n'
base64 ssl.key | tr -d '\n'
```
