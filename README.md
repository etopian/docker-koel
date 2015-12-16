# docker-koel

You must modify files/.env and rebuild this image to suite your needs.

You can expose /DATA to your host's file system and get all the files in the koel directory.

Alpine Linux, PHP-FPM, Nginx, NodeJS

After you fix .env uncomment the line in the Dockerfile that says

cd /DATA/htdocs && php artisan init

or exec -it into the container and then su nginx... and cd /DATA/htdocs && php artisan init
