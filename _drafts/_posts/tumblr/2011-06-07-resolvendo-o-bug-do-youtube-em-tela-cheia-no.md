---
layout: post
title: Resolvendo o bug do Youtube em tela cheia no Ubuntu
date: '2011-06-07T17:02:00-03:00'
tags:
- bug
- dica
- flash
- howto
- youtube
- linux
- adobe
tumblr_url: http://www.uilian.com/post/6293106406/resolvendo-o-bug-do-youtube-em-tela-cheia-no
---
Não sei se acontece para todo mundo, mas para mim, quando eu coloco um vídeo do Youtube em tela cheia, ele fica parado no frame  atual, e o som segue rodando como se tudo estivesse normal. 
Para corrigir o problema, fiz o seguinte:
user@computer:~$ sudo su
root@computer:/# mkdir /etc/adobe
root@computer:/# echo “OverrideGPUValidation = 1” > /etc/adobe/mms.cfg
Pronto, daí é só reiniciar a sessão gráfica!
Apliquei esta correção no Ubuntu 10.10, talvez funcione para outras versões. E embora tenha funcionado para mim, preciso dizer que não me responsabilizo por nenhum problema que possa causar para quem quiser tentar usar essa dica.
