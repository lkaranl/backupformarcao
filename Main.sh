#!/bin/bash

cd backup
while [  1 -eq 1 ]; do
   quantidadeArquivos=$(ls | wc -l)
   if [ $quantidadeArquivos -gt 3 ]; then
      maisVelho=$(ls -t -B backup*| tail -n 1)
      echo "A pasta possui mais de dois arquivos de Backup!"
      echo -e "Apagando o arquivo mais velho -> $maisVelho\n"
      tar -rf Arquivos.tar $maisVelho
      rm $maisVelho
   fi
   sleep 3
done