# rrj.pl

## What is it?

My personal webpage generated with [hugo](https://gohugo.io/) and using [Call me Sam theme](http://themes.gohugo.io/hugo-theme-sam/) with [my modificatins](https://github.com/chew-z/hugo-theme-sam/)

It is hosted on AWS S3 and deployed with [s3-deploy-website](https://github.com/jonls/s3-deploy-website)

The webpage itself is tiny - 232 kB with (gallery/index.html 100kB - with 100 images)

The images in gallery come straight from Facebook CDN (from my Instagram feed). This is my way to keep Amazon hosting bill down to minimum

It requires data folder with instagram.json file (not included in repo) containing metadata for images (urls, tags). Such a file coud be generated with ~~[AWS Lambda function](https://github.com/chew-z/InstaAWS)~~ [IG-CDN using Instagram Basic API](https://github.com/chew-z/IG-CDN) that is my separate project.

instagram.json needs to be re-generated from time to time to update Instagram CDN urls and cache keys. This could be automated using hugo_s3.sh script

So nothing really fancy
