---
layout: post
title: Faça download dos vídeos do Seinfeld
date: '2011-05-12T09:00:06-03:00'
tags:
- software
- free
- programming
- seinfeld
tumblr_url: http://www.uilian.com/post/5419084610/faca-download-dos-videos-do-seinfeld
---
Postei uns dias atrás o link do site do Jerry Seinfeld que começou a liberar vídeos inéditos (ou não) todos os dias, três de cada vez, sem repetir e sem consulta aos dias anteriores.
Eu até agora estava entrando no site e baixando um por um, todos os dias. Mas como bom programador preguiçoso, resolvi criar um script que faça isso por mim. Até porque eu vou acabar esquecendo de entrar lá e baixar os vídeos :)
Mas como provavelmente eu não sou o único que gosta do Seinfeld, vou compartilhar o script com todos que quiserem, e fiquem a vontade para repassar aos amigos.
Sendo usuário de linux, tenho tendência a resolver tudo com bash script, usando comandos bem comuns como “awk”, “sed”, “cut” e “wget”. Se você não usa linux, provavelmente pode tentar usar algo como cygwin, deve funcionar igual. Ou então pode tentar portar para algo como Java, talvez eu mesmo faça isso um dia.
Disponibilizei o script “seinfeld.sh” no Github:
 https://github.com/uilian/Seinfeld_Videos/tree/master/scripts
Basta copiar para um diretório qualquer, dar direito de execução, e rodar informando o diretório onde os vídeos devem ser baixados (se não informar, o default é o home do usuário).
Caso encontrem algum problema, ou se parar de funcionar, o que pode acontecer se o site do Seinfeld for modificado, me avisem.
Enjoy!
