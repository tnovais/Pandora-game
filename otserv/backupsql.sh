#!/bin/sh
# bkp_seubanco.sh

# DATA vai imprimir a data no estio dia-mes-ano
DATA=`/bin/date +%d-%b-%Y-%T`

# NOME armazena o nome do arquivo de backup e
# o diretorio onde o arquivo será salvo no meu caso
# /www/virtual/backup é uma pasta publica do apache,
# coloque o diretório onde quer guardar o backup.

NOME="/home/otserv/database/Database-$DATA.sql"

# variaveis do MySQL
HOST="localhost"
USER="root"
PASSWORD="c6r8kr73"
DATABASE="354035"

mysqldump -h $HOST -u $USER -p$PASSWORD $DATABASE > $NOME