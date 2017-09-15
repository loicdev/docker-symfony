############## cache
cache: | cache-clear perm-clear

cache-clear:
		docker-compose run php_pssgen php bin/console cache:clear

perm-clear:
		docker-compose run php_pssgen chmod 777 -R var/logs
		docker-compose run php_pssgen chmod 777 -R var/cache

############## docker-compose
up:
		docker-compose up -d

stop:
		docker-compose stop

ssh:
		docker-compose exec --user=www-data php_pssgen  bash
