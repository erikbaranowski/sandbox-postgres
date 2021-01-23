#!/usr/bin/env bash

# Configure Yum Repository
dnf -y install https://download.postgresql.org/pub/repos/yum/reporpms/EL-8-x86_64/pgdg-redhat-repo-latest.noarch.rpm
dnf -y install yum-utils
yum-config-manager --enable pgdg13
dnf -qy module disable postgresql

# Install PostgreSQL 11
dnf -y install postgresql13 postgresql13-server

# Initialize PGDATA
/usr/pgsql-13/bin/postgresql-13-setup initdb

# Start DB
systemctl enable postgresql-13.service
systemctl start postgresql-13.service

# Set postgres password
sudo -u postgres psql -d template1 -c "ALTER USER postgres WITH PASSWORD 'postgres';"




