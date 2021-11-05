#!/bin/bash
#Petit script pour récupérer la epfl-sti-react-library qui se trouve sur un serveur à l'EPFL interne :-(
# Il faut en premier creuser un tunnel ssh puis le récupérer après avec un wget et enfin l'installer à la mano
#zf211105.1635

ssh -f -N -L 4443:sti-nodejs.epfl.ch:443 106785@tremplin.epfl.ch

cd alex/lh3.frontend

wget --header 'Host: sti-nodejs.epfl.ch' --no-check-certificate https://localhost:4443/@epfl%2fepfl-sti-react-library/-/epfl-sti-react-library-2.4.0.tgz

npm install epfl-sti-react-library-2.4.0.tgz

