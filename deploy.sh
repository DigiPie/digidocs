#!/bin/bash
git pull origin master
cd ../digipie.github.io/
mkdocs gh-deploy --config-file ../digidocs/mkdocs.yml --remote-branch master
