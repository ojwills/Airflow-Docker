#!/bin/sh
if [ "$DB_INIT" = "True" ]; then airflow db init; fi
