TERMUX_PKG_HOMEPAGE=https://st.suckless.org/
TERMUX_PKG_DESCRIPTION="A simple virtual terminal emulator for X."
TERMUX_PKG_LICENSE=MIT
TERMUX_PKG_MAINTAINER="Tristan Ross <spaceboyross@yandex.com>"
TERMUX_PKG_VERSION=0.8.2
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="http://dl.suckless.org/st/st-$TERMUX_PKG_VERSION.tar.gz"
TERMUX_PKG_SHA256=aeb74e10aa11ed364e1bcc635a81a523119093e63befd2f231f8b0705b15bf35
TERMUX_PKG_DEPENDS="libxft, libxext"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_configure() {
  cp "$TERMUX_PKG_BUILDER_DIR/config.h" "config.h"
}

termux_step_make() {
  export CC=${CC/clang/gcc}
  make X11INC=/data/data/com.termux/files/usr/include/X11 X11LIB=/data/data/com.termux/files/usr/lib/X11
}

termux_step_make_install() {
  make PREFIX=/usr DESTDIR="$TERMUX_PREFIX" TERMINFO="$TERMUX_PREFIX/share/terminfo" install
}
