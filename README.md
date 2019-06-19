# sandbox-postgres11

## About

This repository holds the configuration and instructions for hosting a Postgres 11 development sandbox.

Currently running Postgres 11 on CentOS 7.6

## Install

1. install [VirtualBox 5.2.30](https://www.virtualbox.org/)
2. install [Vagrant 2.2.4](https://www.vagrantup.com/)
3. on Windows 7 SP1 ONLY you will have to update [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-windows-powershell?view=powershell-6) to version 3 or above for Vagrant
4. run cmd as admin
5. cd to directory with this repo
6. `vagrant up`

## ssh

1. install [putty](https://www.putty.org/)
2. connect to 192.168.56.3 port 22 as vagrant/vagrant

## Development/Debug

1. install [pgadmin](https://www.pgadmin.org/)
2. connect with
	- *host:* 192.168.56.3
	- *port:* 5432
	- *username:* postgres
	- *password:* postgres
