#!/bin/sh

if [ "$DATABASE" = "postgres" ]
then
	echo "Waiting for postgres.."

	while ! nc -z $SQL_HOST $SQL_PORT; do
		sleep 0.1
	done

	echo "PostgreSQL started"
fi

#remove all data from database
python manage.py flush --no-input
#applies all database migrations -> setting up the database schema to match current state of Django models.
python manage.py migrate

exec "$@"


Dic["key"] = "swag";


Dic.find("key")