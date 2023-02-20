#!/bin/bash
# usuarios.sh
#
# Mostra os logins e nomes dos usuários do sistema
# Obs.: Lê dados do arquivo /etc/passwd
#
# Versão 1: Mostra o usuários e nomes separados por TAB
# Versão 2: Adiciona suporte à opção -h
#
# Skulkills, Fevereiro de 2023

MENSAGEM_USO="
Uso: $0 [-h]
        -h      Mostra esta tela de ajuda e sai
"

# Tratamento das opções de linha de comando
if test "$1" = "-h"
then
    echo "$MENSAGEM_USO"
    exit 0
fi

# Processamento
cut -d : -f 1,5 /etc/passwd | tr : \\t

