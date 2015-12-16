# docker-koel

You must modify files/.env and rebuild this image to suite your needs.

You can expose /DATA/music and put all your music there. Make sure the permissions are fixed on the host:

`chown 100:101 /DATA/music`

Alpine Linux, PHP-FPM, Nginx, NodeJS

After you fix .env, and create the MySQL database necessary for koel that you define in .env, uncomment the line in the Dockerfile that says

cd /DATA/htdocs && php artisan init

or exec -it into the container and then 

`su nginx && cd /DATA/htdocs && php artisan init`

There is also a line in the Dockerfile for a github token in case github starts rate limiting you, you will need a token.

todo:
- Use Docker enviornment variables to write out the .env file so those can be passed at runtime.
