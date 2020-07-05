---
layout: post
title: Mapas e geolocalização com NodeJS e MongoDB
date: '2020-07-05T18:00:00-03:00'
tags: [nodejs, mongodb, javascript, express, json]
---

*** UPDATE Julho 2020 ***

Versão revisada e atualizada, código está muito mais limpo e bem organizado, além de incluir a configuração do docker para rodar o MongoDB.

***

Faz tempo que eu queria testar as features de geoprocessamento do [MongoDB][1], então resolvi criar um projetinho simples para estudo usando [NodeJS][3] + [Express][4], e o [LeafletJS][2] para visualização dos mapas do [Open Street Maps][7] e [MapBox][8].

<img src="{{ site.baseurl }}/images/mongo-node-geo.PNG" />                                    

O objetivo é simplesmente encontrar pontos de WiFi liberados em Porto Alegre para uma determinada coordenada geográfica e raio. Os dados dos pontos de acesso foram carregados no MongoDB, a partir de uma listagem disponibilizada pela Prefeitura de Porto Alegre no site [DataPoA][5]. Confere aí:

<img src="{{ site.baseurl }}/images/node-mongo-geo.gif" />

Como ficou bem simples, dá para acompanhar sem muito esforço. Disponibilizei o código fonte em um [repositório no github][6].


[1]: https://docs.mongodb.org/manual/reference/operator/query-geospatial/ "Geospatial Query Operators"
[2]: http://leafletjs.com/ "Leaflet - an open-source JavaScript library for mobile-friendly interactive maps"
[3]: https://nodejs.org/ "NodeJS"
[4]: http://expressjs.com/ "Fast, unopinionated, minimalist web framework for Node.js"
[5]: http://datapoa.com.br/
[6]: https://github.com/uilian/node-simple-geo "Simple Geo Application "
[7]: http://www.openstreetmap.org/ "Open Street Maps"
[8]: https://www.mapbox.com/ "Mapbox - The next generation of map design."
