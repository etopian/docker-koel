# docker-koel - Alpine Linux, PHP-FPM, Nginx, NodeJS

Issue: https://github.com/phanan/koel/issues/10

The .env file is dynamic using Docker variables.

You can expose /DATA/music and put all your music there. Make sure the permissions are fixed on the host:

`chown 100:101 /DATA/music`

```
docker run -e DB_HOST="172.17.0.1" -e DB_DATABASE="db_name" .. -v /my-mp3s:/DATA/music etopian/docker-koel 

All variables available, via -e switch of docker run as above. All these need to be set or it will not work properly.

    DB_HOST="172.17.0.1"
    DB_DATABASE=""
    DB_USERNAME=""
    DB_PASSWORD=""
    ADMIN_EMAIL=""
    ADMIN_NAME=""
    ADMIN_PASSWORD=""
    APP_DEBUG=false
    AP_ENV=production
```

After this init the site via exec

```
docker exec {container} su nginx -c "cd /DATA/htdocs && php artisan init"
```
todo:
- Delete useless files after it's installed.
