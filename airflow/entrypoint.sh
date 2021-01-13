#!/bin/sh
if $DB_INIT; then
    airflow db init
