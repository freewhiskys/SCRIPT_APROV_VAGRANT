El script vagrant_script.rb es un vagrant file que llama a el script_ex1.sh.

El script script_ex1.sh instala los programas apache2, mysql-server, php y adminer al ejecutar el vagrant file.
Todos los programas se instalan de forma silenciosa.

El script conndb.sh comprueba que le passes tres variables y los parametros tienen el formato configurado.
(Usuario, host y puerto que tiene que ser 3306)

El fichero gravacio_terminal es una grabación del terminal con el programa asciinema, para reproducirla tienes que seguir los siguientes pasos:

- sudo apt-add-repository ppa:zanchey/asciinema
- sudo apt-get update
- sudo apt-get install asciinema
- asciinema play gravacio_terminal

Scripts creados por Sergi Ramos y Miguel Martínez.
