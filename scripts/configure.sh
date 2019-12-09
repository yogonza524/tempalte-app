#!/bin/bash

createEnvFile() {
  printf "%sWriting .env file\n" "$NORMAL"
  {
    echo "DB_NAME=template"
    echo "DB_USERNAME=test"
    echo "DB_PASSWORD=$(openssl rand -base64 6)"
    echo "DB_HOST=database"
  } > .env

  printf "%sYour database credentials have been generated and saved to %s${PWD}/.env%s file\n" "$NORMAL" "$YELLOW" "$NORMAL"
}
function main() {
  createEnvFile
}

main
