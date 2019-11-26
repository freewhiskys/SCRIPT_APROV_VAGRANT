#!/bin/sh

nomscript=$0   # $0 es el nom del programa

function usage () {
   echo "Usage: $0 [-u <string>][-h <string>][-p <3306>]" 1>&2; exit 1;
}

while getopts ":u:h:p" o; do
    #echo "OPTIND: ${OPTIND}"
    case "${o}" in
        u)
            USER=${OPTARG}
            u=${OPTARG}
            ;;
			
        h)
            HOST=${OPTARG}
            h=${OPTARG}
            ;;
        p)  
            PORT=${OPTARG}
            p=${OPTARG}
            if [ $p -ne 3306 ]
            then
				echo "Port 3306"
				usage
            fi
            ;;
        :)  
            echo "ERROR: Option -$OPTARG requires an argument"
            usage
            ;;
        \?)
            echo "ERROR: Invalid option -$OPTARG"
            usage
            ;;
    esac
	#shift $((OPTIND-1))
	#printf "Remaining arguments are: %s\n" "$*"
done

# Check required switches exist
if [ -z "${u}" ] || [ -z "${h}" ] || [-z "${p}"]
then
 usage
 echo "Please give u, h and p values"
fi

echo "p = ${p}"
echo "h = ${h}"
echo "USER = ${USER}"
echo "HOST = ${HOST}"
echo "PORT = ${PORT}"
echo ${f}
