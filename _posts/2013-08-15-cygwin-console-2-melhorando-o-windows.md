---
layout: post
title: "Cygwin + Console 2 - Melhorando o Windows"
date: "2013-08-15T15:48:00-03:00"
tags: 
  - programming
  - cygwin
  - console
  - tools
published: true
---

Quem trabalha com desenvolvimento utilizando Windows não precisa abrir mão das facilidades que um bom conjunto de ferramentas de console podem oferecer.

Neste post vou mostrar como instalar e configurar duas das minhas ferramentas favoritas, **Cygwin** e **Console 2**.

## Cygwin

Para iniciar, baixe o instalador do [Cygwin](http://www.cygwin.com/ "Cygwin"). Observe que o mesmo executável é utilizado tanto para instalar quanto para atualizar ou adicionar novos pacotes, então não remova após instalar.

Siga o passo-a-passo apresentado, utilizando as seguintes configurações:


* Escolha a fonte dos pacotes de instalação: *“Install from Internet”*.
* Root directory: mantenha o default ou troque para **c:\cygwin** se for diferente disso.
* Configuração de conexão: *“Use Internet Explorer Settings”*. Útil principalmente se sua rede tem um proxy.
* Escolha dos pacotes: a configuração default não inclui alguns pacotes que serão necessários rapidamente, então você precisa se certificar que ao menos os seguintes estarão lá:

  1. curl (mostrado nas figuras abaixo) 
  2. wget
  3. zip
  4. Extras: dos2unix, vim

![Passo 1](https://dl.dropboxusercontent.com/u/7224356/blog/images/cygwin_1_packs.png "Passo 1")

![Passo 2](https://dl.dropboxusercontent.com/u/7224356/blog/images/curl_filtered.png "Passo 2")

![Passo 3](https://dl.dropboxusercontent.com/u/7224356/blog/images/curl_selected.png "Passo 3")


### Dicas:
Coloque ou (descomente) a seguinte linha no **~/.bashrc** , melhora a visualização dos arquivos e pastas: 

```shell
alias ls=’ls -hF —color=tty’
```

Para quem acessa a internet através de um proxy (normal em ambiente coorporativo) coloque a seguinte linha no final do mesmo arquivo **~/.bashrc**  *(não esqueça de substituir usuário, senha, IP e porta)*: 

```shell
alias curl=”curl -U username:password —proxy-ntlm —proxy ip-servidor-proxy:porta-servidor-proxy”
```

Facilite a sua vida, crie links simbólicos *(“ln -s”)* no seu diretório inicial para pastas que você utiliza constantemente.

## Console 2

Ok, agora para ficar melhor, só se tivesse múltiplas abas. Aí entra em cena um software chamado [Console 2](http://sourceforge.net/projects/console/ "Console 2"). Ele é bastante utilizado em conjunto com o velho e cansado console do Windows, mas também pode ser utilizado com o **Cygwin** \o/

* Faça o download do [Console 2](http://sourceforge.net/projects/console/ "Console 2").
* É um zip, então descompacte em uma pasta de sua preferência.
* No menu  Edit > Settings, opção Console, altere o Shell para apontar para o arquivo **Cygwin.bat**, se você seguiu as instruções de instalação anteriores deve ficar algo assim **C:\cygwin\Cygwin.bat**

**Dica 1**, os atalhos de *“copy & paste"* padrão do Console são pouco intuitivos, então, na mesma tela de configuração, selecione a opção *Hotkeys > Mouse*, e altere como segue:

1. Copy/clear selection: Right
2. Select text: Left
3. Past text: Right
4. Drag window: Middle
5. Context menu: Right + Ctrl
6. Na opção “Behavior”, desmarque a opção *“Copy on select"* e marque a opção *"Clear selection on copy”*.

**Dica 2**, ainda na janela *Settings*, a opção *“Appearance > More"* oferece controle sobre a transparência da janela. Just saying ;)

![Transparencia](https://dl.dropboxusercontent.com/u/7224356/blog/images/console.png "Transparencia")

Pronto! Dúvidas, sugestões? Deixe nos comentários!