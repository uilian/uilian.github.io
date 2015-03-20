---
layout: post
title: 'Atualizando do #Grails 2.1 para o 2.2'
date: '2013-01-25T14:57:00-02:00'
tags:
- grails
- java
- programming
- tutorial
- howto
tumblr_url: http://www.uilian.com/post/41454305026/atualizando-do-grails-2-1-para-o-2-2
---
Fazer uma atualização de versão menor como esta não me parecia algo que pudesse se escrever a respeito, mas como rendeu uma quantidade de trabalho considerável, vale tomar nota.
Decidi atualizar principalmente porque esta nova versão do Grails incorpora o Groovy 2.0 (a anterior vinha como o 1.8), e isso por si só já rende muitas melhorias em performance.
Inicialmente, basta fazer o download do Grails 2.2 no site http://grails.org/download, desempacotar, setar o caminho na variável de ambiente %GRAILS_HOME% e adicioná-la ao %PATH% do sistema. Este passo é opcional caso você não utilize via linha de comando. 
OBS: A versão mínima de JDK que deve ter instalada é a 1.6. 
Eu utilizo a IDE GGTS 3.1.0 (http://grails.org/products/ggts), que é o último release estável disponível na data deste post, e tive que fazer algumas alterações nele para funcionar com a nova versão do Grails. Os problemas também acontecem no milestone “3.2.0 M1”. 
Primeiro, informe nas configurações do GGTS a localização do novo Grails, nas preferências, Groovy > Grails.
Segundo, você precisa baixar o compilador do Groovy 2.0 para o GGTS, porque ele não vem instalado por default. Basta usar o seguinte update site:
> http://dist.springsource.org/release/GRECLIPSE/e4.2
 Depois de instalado, basta ir em preferências da IDE, Groovy > Compiler e trocar para o compilador 2.0. 
Por último, e isto é um bug (http://jira.grails.org/browse/GRAILS-7836) e provavelmente vai ser corrigido em breve, não é possível iniciar um projeto pelo IDE porque uma lib do Grails trocou de pacote. 
A solução mais simples é copiar a pasta e renomear, mas eu fiz assim: basta criar um link de diretório usando o mklink via linha de comando no windows, o “ln -s” no linux, do diretório “\%GRAILS_HOME%\lib\org.springsource.springloaded” com o nome “com.springsource.springloaded”.
 Após fazer isto, rodei o comando “upgrade” nos projetos, e tudo funcionou normalmente. O único bug que eu encontrei foi em consultas que utilizavam “Object.executeQuery()”. Também tem um issue no JIRA aberto para ele (http://jira.grails.org/browse/GRAILS-9447).
A nova versão do Grails começou a acusar o seguinte erro em trechos que funcionavam perfeitamente: 
> java.lang.ClassCastException: java.lang.Long cannot be cast to java.lang.Integer 
Estas consultas envolvem a coluna “id” dos domains. A maneira mais rápida que eu encontrei de resolver isso foi substituir os “executeQuery” por “createCriteria”. Por algum motivo, a exceção não ocorre com consultas através da interface “Criteria”. 
O resultado final é que até a IDE está rodando mais rápida após a atualização, talvez pela alteração na forma como o Tomcat é invocado nesta nova versão do Grails.
