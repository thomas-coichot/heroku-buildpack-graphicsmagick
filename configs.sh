
export ZLIB_VERSION="1.2.11"
export LIBPNG_VERSION="1.6.34"
export NASM_VERSION="2.13.02"
export LIBJPEG_TURBO_VERSION="1.5.3"
export GRAPHICS_MAGICK_VERSION="1.3.28"
export REMOTE_PATH="graphicsmagick-${GRAPHICS_MAGICK_VERSION}.tgz"
export LIBPNG_REMOTE_PATH="libpng-${LIBPNG_VERSION}.tgz"
export LIBJPEG_TURBO_REMOTE_PATH="libjpeg_turbo-${LIBJPEG_TURBO_VERSION}.tgz"
export NASM_REMOTE_PATH="nasm-${NASM_VERSION}.tgz"
export ZLIB_REMOTE_PATH="zlib-${ZLIB_VERSION}.tgz"
# heroku dropped support for cedar, but leaving for if/when they introduce a
# new stack
export STACK="cedar-14"
export S3_BUCKET="x-heroku-buildpacks"
export S3_ROOT_FOLDER="graphicsmagick"
