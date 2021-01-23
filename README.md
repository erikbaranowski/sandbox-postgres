# sandbox-postgres11

## About

This repository holds the configuration and instructions for hosting a Postgres 13 development sandbox.

Currently running Postgres 13 on CentOS 8.2

## Install

1. install [VirtualBox 6.1.18](https://www.virtualbox.org/)
2. install [Vagrant 2.2.14](https://www.vagrantup.com/)
3. run cmd as admin
4. cd to directory with this repo
5. `vagrant up`

## Bonus Tips

1. on Windows 7 SP1 ONLY you will have to update [PowerShell](https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-windows-powershell?view=powershell-6) to version 3 or above for Vagrant
2. You may need to enable VMs in your bios. Google is your friend for how to do this with your motherboard.

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

## Sqitch

1. [Sqitch](http://sqitch.org/) is installed and configured for new schema development
