#!/bin/bash

find -mtime +365

echo -e "\nDeseja mesmo excluir? [S]im [N]ao"
read resposta

if [ $resposta == 's' ] || [ $resposta == 'S' ]
then
  echo "-----------------------------------------------------------------" >> log.txt
  echo -e "Data de execução: `date +%d/%m/%Y` - `date +%H:%M`" >> log.txt
  echo "" >> log.txt
  echo -e "`find -mtime +365`" >> log.txt
  find -type f -mtime +365 -exec rm -rf {} \;

  echo "Arquivos excluídos com sucesso" >> log.txt
  echo "Arquivos excluídos com sucesso"
  echo "-----------------------------------------------------------------" >> log.txt

else
  echo "Cancelado"
fi
