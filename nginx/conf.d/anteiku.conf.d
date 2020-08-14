server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name api.anteiku.de;
    keepalive_timeout 70;

    ssl_certificate /etc/letsencrypt/live/anteiku.de/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/anteiku.de/privkey.pem;

    location / {
        proxy_pass http://backend:9696/;
        proxy_http_version 1.1;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection $connection_upgrade;
    }
}