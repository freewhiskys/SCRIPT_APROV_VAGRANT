#!/bin/sh

nomscript=$0   # $0 es el nom del programa

function usage () {
   cat <<EOF
Usage: nomscript [-u usuari] [-h hostname] [-t]
   -u   usuari de la base de dades (obligatori)
   -h   hostname on es connectarà (obligatori
   -p   port (no obligatori ja que per defecte és 3306, però si existeix ha de ser un numero superior a 1024 i inferior o igual a 65535)
   -t   no es connecta,  només comprova connexió
EOF
}
