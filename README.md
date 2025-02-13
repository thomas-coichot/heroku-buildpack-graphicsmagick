heroku-buildpack-graphicsmagick
===============================

Use the GraphicsMagick (1.3.45) inside Heroku. Works with [`heroku-24`](https://devcenter.heroku.com/articles/heroku-24-stack).

## Usage

Requires [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt)

Insert these buildpacks before the main buildpack for your application:
Make sure the `apt` buildpack is included before this buildpack.

```
heroku buildpacks:add --index 1 https://github.com/heroku/heroku-buildpack-apt
heroku buildpacks:add --index 2 https://github.com/bogini/heroku-buildpack-graphicsmagick
```

Include these at the beginning of your `Aptfile`
```
debhelper
g++
gsfonts
libbz2-dev
libexif-dev
libfreetype6-dev
libice-dev
libjbig-dev
libjpeg-dev
liblcms2-dev
libltdl-dev
libpng-dev
libsm-dev
libtiff-dev
libwebp-dev
libwmf-dev
libx11-dev
libxext-dev
libxml2-dev
libsharpyuv
perl
sharutils
transfig
x11proto-core-dev
zlib1g-dev
```

The next time you push your application it should install graphicsmagick before
your application buildpack.

For more info see [Using multiple buildpacks for an app](https://devcenter.heroku.com/articles/using-multiple-buildpacks-for-an-app)
