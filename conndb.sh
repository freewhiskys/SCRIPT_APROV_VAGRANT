#!/bin/bash

function usage () {
   echo "Usage: $0 [-u <string>][-h <string>][-p <3306>]" 1>&2; exit 1;
}

while getopts ":u:h:p" o; do
    #echo "OPTIND: ${OPTIND}"
    case "${o}" in
        u)
            USER=${OPTARG}
            ;;
			
        h)
            HOST=${OPTARG}
            ;;
        p)  
            p=${OPTARG}
	    PORT=p
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
	
done

# Check required switches exist
if [ -z "${u}" ] || [ -z "${h}" ] || [-z "${p}"]
then
 usage
 echo "Please give u, h and p values"
fi


echo "USER = ${USER}"
echo "HOST = ${HOST}"
echo "PORT = ${PORT}"
