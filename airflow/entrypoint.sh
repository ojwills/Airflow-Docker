#!/bin/sh
if [ "$ENABLED" = "True" ]; then airflow db init; fi
