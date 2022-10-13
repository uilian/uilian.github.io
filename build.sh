#!/bin/bash
BUILDER_NAME=jekyll_builder
JEKYLL_VERSION=latest
if [ ! "$(docker ps -a -q -f name=$BUILDER_NAME)" ]; then
    docker container run \
        --name $BUILDER_NAME \
        --env JEKYLL_ENV=production \
        --volume="$(pwd)":/srv/jekyll \
        --entrypoint "/bin/bash" \
        jekyll/jekyll:$JEKYLL_VERSION \
        jekyll build
else
    docker container start -i $BUILDER_NAME
fi

# using python to run the generated static site
python3 -m http.server -d _site 4000
