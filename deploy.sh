#!/bin/bash
git pull
docker exec -it app1 php artisan migrate
docker exec -it app1 php artisan config:clear
docker exec -it app1 php artisan cache:clear
docker exec -it app1 php artisan view:clear
docker exec -it app1 php artisan route:clear
