# docker-koel

You must modify files/.env and rebuild this image to suite your needs.

You can expose /DATA to your host's file system and get all the files in the koel directory.

Alpine Linux, PHP-FPM, Nginx, NodeJS

Uncomment the file that says

#cd /DATA/htdocs && php artisan init

or exec -it into the container and then su nginx... and cd /DATA/htdocs && php artisan init
