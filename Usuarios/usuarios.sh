#!/bin/bash
# usuarios.sh
#
# Mostra os logins e nomes dos usuários do sistema
# Obs.: Lê dados do arquivo /etc/passwd
#
# Skulkills, Fevereiro de 2007
#
cut -d : -f 1,5 /etc/passwd | tr : \\t

