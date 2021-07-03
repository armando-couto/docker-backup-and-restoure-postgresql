#!/bin/bash

echo "Iniciando";

echo "Deletando o banco antigo";
PGPASSWORD=$PASSWORD dropdb --host=$HOST --username=$USERNAME $DATABASE

echo "Criando o banco novo";
PGPASSWORD=$PASSWORD createdb --host=$HOST --username=$USERNAME $DATABASE

echo "Restaurando a base nova";
NOW=$(date +"%Y%m%d");
echo $NOW;
PGPASSWORD=$PASSWORD pg_restore --verbose --clean --no-acl --no-owner --host=$HOST --dbname=$DATABASE --username=postgres "/home/ubuntu/${DATABASE}_${NOW}.backup"