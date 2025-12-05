#!/bin/bash

echo '=== Cleaning generated files...'
rm -Rf _site/
rm Gemfile.lock

echo '=== Starting docker server + publishing...'
docker run --rm --volume="$PWD:/srv/jekyll:Z" -p 4000:4000 ossyupiik/jekyll:1.0.0 bundle exec jekyll serve -H 0.0.0.0 -P 4000
