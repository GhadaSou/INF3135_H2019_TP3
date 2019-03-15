#!/bin/bash
# evaluer.sh
if [ -z $1 ]
then
  correction=inf3135-h2019-tp3.correction
else
  correction=$1
fi
wget -q https://github.com/guyfrancoeur/INF3135_H2019_TP3/raw/master/${correction} -O ${correction}
if [ ! -f inf3135-h2019-tp3.correction ]
then
  echo "erreur fatale, fichier correction inexistent."
  exit 1
fi
for line in `cat ${correction}`
do
  #votre code ici
done
