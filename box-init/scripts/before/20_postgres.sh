#!/usr/bin/env bash

# Configure Yum Repository
rpm -Uvh https://yum.postgresql.org/11/redhat/rhel-7-x86_64/pgdg-redhat-repo-latest.noarch.rpm

# Install PostgreSQL 11
yum -y install postgresql11-server

# Initialize PGDATA
/usr/pgsql-11/bin/postgresql-11-setup initdb

# Start DB
systemctl enable postgresql-11.service
systemctl start postgresql-11.service

# Set postgres password
sudo -u postgres psql -d template1 -c "ALTER USER postgres WITH PASSWORD 'postgres';"