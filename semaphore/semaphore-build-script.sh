# This is the build script used for
# https://semaphoreci.com/libratbag/libratbag/
#
# When updating the build settings, please update this script too.

sudo apt-get update
sudo apt-get install -y valgrind check libevdev-dev libudev-dev doxygen graphviz
autoreconf -ivf
./configure --prefix=$PWD/_build --with-udev-base-dir=$PWD/_build
DISTCHECK_CONFIGURE_FLAGS="--with-udev-base-dir=$PWD/_build" make distcheck
