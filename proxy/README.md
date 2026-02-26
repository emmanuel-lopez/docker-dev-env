# Docker Proxy for Development Environment
Setups a Portainer and Nginx proxy.

| File               | Purpose                                |
|--------------------|----------------------------------------|
| README.md          |                                        |
| docker-compose.yml | Docker Compose file                    |
| cer.pem            | Nginx SSL cert file (**not provided**) |
| key.pem            | Nginx SSL key file (**not provided**)  |
| nginx.conf         | Nginx config file                      |
| html/              | HTML files folder for Nginx            |

## Nginx
Reachable at: https://localhost:8443/

### SSL
Add your cer.pem and key.pem **or** remove/replace the HTTPS/SSL/443 entries with HTTP/80 in the nginx.conf and docker-compose.yml file

### Nginx Config
 * Update the Nginx config with your domains and container mapping.
 * Use the PGAdmin entry as an example
 * Containers **must** be in the **proxy_network** to be reachable from Nginx 