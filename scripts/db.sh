#!/bin/bash

export $(cat ./.env | xargs)
docker-compose exec database sh -c "mysql ${DB_NAME} -u ${DB_USERNAME} -p${DB_PASSWORD}"
