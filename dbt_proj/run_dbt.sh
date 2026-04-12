#!/bin/bash

echo "Running DBT commands"
echo "Run all dependencies to collect the required packages before dbt model execution"
dbt run --target dev --profiles-dir . 