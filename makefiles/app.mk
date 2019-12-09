configure:
	./scripts/configure.sh

clean:
	./scripts/gradle-launcher.sh clean

build: clean
	./scripts/gradle-launcher.sh build

run: build
	docker-compose up --build -d

stop:
	docker-compose stop

debug:
	SPRING_PROFILES_ACTIVE=test ./gradlew bootRun --debug-jvm

logs:
	docker-compose logs -f app

dependency-check:
	./scripts/gradle-launcher.sh dependencyCheckAnalyze --info

db:
	./scripts/db.sh

flyway:
	docker-compose up flyway
