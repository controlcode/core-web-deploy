user deploy;

events {
}
http {
    log_format compression '$remote_addr - $remote_user [$time_local] '
                       '"$request" $status $bytes_sent '
                       '"$http_referer" "$http_user_agent" "$gzip_ratio"';

    access_log /home/deploy/access.log compression buffer=32k;

    server {
        listen 80;
        server_name 139.59.164.167;
        error_log /home/deploy/error.log debug;

        location / {
            include proxy_params;
            proxy_pass http://unix:/home/deploy/site/cc.sock;
        }

        location /static/ {
            root /home/deploy;
        }
    }
}
