#!/bin/bash

# Echo usage if something isn't right.
function usage () {
   cat <<EOF
Usage: nomscript [-u usuari] [-h hostname] [-t]
   -u   usuari de la base de dades (obligatori)
   -h   hostname on es connectarà (obligatori
   -p   port (no obligatori ja que per defecte és 3306, però si existeix ha de ser un numero superior a 1024 i inferior o igual a 65535)
   -t   no es connecta,  només comprova connexió
EOF
}

while getopts ":u:h:p:t" o; do
    case "${o}" in
        u)
            user=${OPTARG}
            ;;
        h)
            host=${OPTARG}
			port=3306
            ;;
        p)  
			
			if [[ ${OPTARG} -le "1024" || ${OPTARG} -ge "65535" ]];
			then
				usage
			else
				port=${OPTARG}
			fi
            ;;
		t) 
			
			;;
        :)  
            echo "ERROR: Option -$OPTARG requires an argument"
            #usage
            ;;
        \?)
            echo "ERROR: Invalid option -$OPTARG"
            #usage
            ;;
    esac
done
 
# Check required switches exist
if [ -z "${user}" ] || [ -z "${host}" ]; then
 #   usage
 echo "Please give u and h values"
fi

 
echo "USER = ${user}"
echo "HOST = ${host}"
echo "PORT = ${port}"
