---
layout: post
title: Recuperando seu Dropad A8
date: '2011-08-25T22:00:04-03:00'
tags:
- dropad
- recovery
- recuperacao
- dead
- firmware
tumblr_url: http://www.uilian.com/post/9396792829/recuperando-seu-dropad-a8
---
Tenho recebido muitas mensagens de pessoas que não tiveram sorte com a atualização dos seus tablets, e apesar de comigo tudo ter dado certo, pesquisei formas de trazer de volta um Dropad A8 que foi para a “terra da tela preta”, ou seja, fazer o recovery.
Mas antes de mais nada, identifiquei que as pessoas que chegam até aqui com este problema não seguiram exatamente o tutorial de atualização, especialmente a parte de utilizar um cartão externo, formatado especialmente para a ocasião. 
Então, mãos à obra!
A boa notícia é que encontrei dois métodos que as pessoas relataram ser eficazes. A má notícia é que eu pessoalmente não testei nenhum deles (porque não tive problema algum). Então vocês que estão desesperados por uma solução, terão que testar por conta e risco. Mas se você está preso em uma tela preta, estes procedimentos não vão piorar a situação.
Método 1 (o fácil, torce para funcionar):  
1- Considerando Dropad A8 (e similares como Herotab C8), se o problema for no cartão SD interno, deveria ser facilmente resolvido pressionando a combinação POWER+MENU, tendo o cuidado de retirar antes o cartão do slot externo se houver algum. Com sorte, o sistema vai pedir para formatar o cartão interno e recriar as partições originais.

Não deu sorte né … então vamos para o difícil …
Método 2 - Usando Linux (no Windows, use o VirtualBox + LiveCD do Ubuntu):
1- A idéia aqui é recuperar a possibilidade de fazer boot a partir do SD interno.
2- Você vai precisar de um cartão de memória com no mínimo 2GB (e um leitor de cartões), de um computar com linux, e um pacote com o firmware, sugiro o “Dropad_V2.3_2011_05_31_rootable.zip”.
3- Extraia o conteúdo do pacote do firmware para o computador.
4- Abra um terminal, e vá para o diretório onde os arquivos foram extraídos. Coloque o cartão SD no leitor conectado ao computador, e digite os seguintes comandos (substituindo "/DEV/CARD" pelo caminho do seu leitor de cartões):
sudo dd if=/dev/zero of=/DEV/CARD bs=512KB count=4
sudo dd if=u-boot-sd.bin of=/DEV/CARD
5- Quando terminar, desconecte e conecte novamente o leitor de cartões. Você deverá ver 4 partições no cartão (usando o Disk Manager, por exemplo), uma com 100MB, outra com 500MB, uma terceira com 130MB, e a última com o resto do cartão. Formate a de 500MB ou a última (se for maior) como FAT32, e monte a mesma.
6- Coloque o cartão no tablet, e inicie em modo de update, isto é, segure POWER + MENU durante o boot. A tela de update vai aparecer, deve demorar um pouco, tenha paciência. No final, o tablet irá iniciar com o novo firmware, e irá desligar quando tiver terminado de atualizar.
7- Remova o cartão, e ligue o aparelho. Deverá iniciar normalmente (dedos cruzados!)

Você seguiu lendo, eu disse que tinha achado só duas soluções … então se deu tudo errado, tem uma última chance, só para os desesperados …
EM ÚLTIMO CASO, FAÇA O SEGUINTE:
1- Tente remover o cartão SD interno, e repita os passos 6 e 7 citados anteriormente. Formate o cartão SD interno totalmente como RAW, e coloque novamente no lugar. Formate o cartão SD externo COMPLETO como FAT32, coloque os arquivos do pacote do firmware nele, e tente fazer boot em modo de update novamente. Abaixo tem uma foto do slot do cartão interno:


Links úteis:
Imagens do Dropad A8 desmontado no DX 
Vídeo sobre como desmontar seu Dropad A8


Então, boa sorte a todos, e espero que consigam fazer o recovery dos seus Dropad com sucesso!
