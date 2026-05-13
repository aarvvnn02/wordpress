#!/bin/bash

REPO_URL="https://github.com/aarvvnn02/wordpress.git"

DESTINO="/home/vagrant/proyecto"

if [ -d "$DESTINO" ]; then

    cd $DESTINO
    git pull

else

    git clone $REPO_URL $DESTINO

fi

mkdir -p /home/vagrant/site

cp -r $DESTINO/wordpress-src/* /home/vagrant/site/
