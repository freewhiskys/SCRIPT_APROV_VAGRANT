#!/bin/bash

function usage () {
   echo "Usage: $0 [-u <string>][-h <string>][-p <3306>]" 1>&2; exit 1;
}

while getopts ":u:h:p" o; do
    
    case "${o}" in
        u)
            u=${OPTARG}
            ;;
			
        h)
            h=${OPTARG}
            ;;
        p)  
            p=${OPTARG}

            if [$p -ne 3306]
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
	echo "Please give u, h and p values"
	usage
 
fi


echo "USER = ${u}"
echo "HOST = ${h}"
echo "PORT = ${p}"
