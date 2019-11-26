# LAMP SCRIPT
This is a script which install a LAMP not configurated. The script provides a LAMP pile with: 

  - Apache2
  - Mysql-Server
  - PHP

# Provisioning

Project:

```
git clone git://github.com/freewhiskys/SCRIPT_APROV_VAGRANT
```

Script:

```
wget https://raw.githubusercontent.com/freewhiskys/SCRIPT_APROV_VAGRANT/master/script_ex1.sh
```

Vagrant file:

```
wget https://github.com/freewhiskys/SCRIPT_APROV_VAGRANT/blob/master/vagrant_script.rb
```





# Checks
Apache:
```
  - sudo systemctl status apache2
```
Mysql:
```
  - sudo systemctl status mysql
```
PHP:
```
  - sudo systemctl status php
``` 
