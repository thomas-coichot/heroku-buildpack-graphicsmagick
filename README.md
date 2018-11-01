heroku-buildpack-graphicsmagick
===============================

## Not Actively Maintained.
If you wish to continue development on this please fork it to your own repo.

Use the GraphicsMagick (1.3.30) inside Heroku.

## Usage

Requires [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt)

Insert these buildpacks before the main buildpack for your application:
Make sure the `apt` buildpack is included before this buildpack.

```
heroku buildpacks:add --index 1 https://github.com/heroku/heroku-buildpack-apt
heroku buildpacks:add --index 2 https://github.com/mcollina/heroku-buildpack-graphicsmagick.git
```

Include these at the beginning of your `Aptfile`
```
:repo:deb http://http.us.debian.org/debian stretch main

libgraphicsmagick1-dev
libgraphicsmagick++1-dev
libjpeg-turbo
libpng-dev
zlib1g-dev
libjasper-dev
libjasper1
```

The next time you push your application it should install graphicsmagick before
your application buildpack.

For more info see [Using multiple buildpacks for an app](https://devcenter.heroku.com/articles/using-multiple-buildpacks-for-an-app)

## Hacking

To change this buildpack, fork it on Github.  Push up changes to your fork,
then create a test app with `--buildpack <your-github-url>` and push to it.

Commit and push the changes to your buildpack to your Github fork, then
push your sample app to Heroku to test.  You should see:

    -----> Downloading graphicsmagick YOUR_IMAGE_MAGICK_VERSION_HERE

## Heroku Cedar

Heroku dropped the cedar stack on November 4th, 2015. If you still need to run
this buildpack on cedar for whatever reason you can do by referencing an older
version of the buildpack:

```
heroku buildpacks:add --index 1 https://github.com/mcollina/heroku-buildpack-graphicsmagick.git#35f87dd
```
