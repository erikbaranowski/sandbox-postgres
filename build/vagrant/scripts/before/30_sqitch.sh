#!/usr/bin/env bash

# Install Dependencies
yum -y install perl-devel perl-CPAN postgresql perl-DBD-Pg
yum -y install gcc
yum -y install postgresql-devel

# Install cpanm
curl -L https://cpanmin.us | perl - --sudo App::cpanminus

# Install sqitch
PATH="$PATH:/usr/local/bin"
cpanm install --notest App::Sqitch DBD::Pg