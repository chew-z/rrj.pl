#!/usr/bin/env zsh

# remove all .DS_Store macCrap
# gfind . -name .DS_Store -type f -delete -print
# Not using macOS anymore - what a relief!

# using AWS Lambda
# regenerate instagram.json - refresh urls and cache keys
curl -X GET -o ./data/instagram.json 'https://myownendpoint.execute-api.eu-central-1.amazonaws.com/dev/insta_json?limit=100'

# clean public folder
# -- Running hugo does not remove generated files before building. 
# -- This means that you should delete your public/ directory 
# -- before running the hugo command.
rm -rf ./public

# build with Hugo
hugo -v

# deploy to S3
s3-deploy-website
