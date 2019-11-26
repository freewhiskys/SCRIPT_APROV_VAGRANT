# MySQL conecction test script



### Provisioning
Project:
> git clone git://github.com/freewhiskys/SCRIPT_APROV_VAGRANT
 
### Checks
#### Getops and filter
    while getopts ":u:h:p" o; do
    #echo "OPTIND: ${OPTIND}"
    case "${o}" in

##### User:
#
    u)
            USER=${OPTARG}
            u=${OPTARG}

##### Host
#
    h)
            HOST=${OPTARG}
            h=${OPTARG}
##### Port
#
    p)  
            PORT=${OPTARG}
            p=${OPTARG}
            if [ $p -ne 3306 ]
            then
				echo "Port 3306"
				usage
            fi

