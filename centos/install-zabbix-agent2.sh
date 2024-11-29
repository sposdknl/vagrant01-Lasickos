#!/usr/bin/env bash

# Stažení balíčku pro instalaci zabbix repo
rpm -Uvh https://repo.zabbix.com/zabbix/6.0/rhel/9/x86_64/zabbix-release-latest.el9.noarch.rpm
yum clean all

# Instalace meta balíčku
yum install zabbix-agent2 zabbix-agent2-plugin-*

sudo systemctl enable zabbix-agent2

# Restart sluzby zabbix-agent2
sudo systemctl restart zabbix-agent2

# Povoleni sluzby zabbix-agent2
sudo systemctl enable zabbix-agent2

# EOF