build :
	docker-compose build

up :
	docker-compose up -d

exec :
	docker exec -it ubuntu bash
	
mongo-database-tools-install:
	docker exec -it ubuntu bash -c 'cd home && wget https://fastdl.mongodb.org/tools/db/mongodb-database-tools-ubuntu2004-x86_64-100.5.2.deb  && apt install ./mongodb-database-tools-*-100.5.2.deb'
