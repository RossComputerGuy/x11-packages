TERMUX_PKG_HOMEPAGE=https://launchpad.net/zeitgeist/
TERMUX_PKG_DESCRIPTION="Service logging user activities and events"
TERMUX_PKG_LICENSE="GPL-3.0"
TERMUX_PKG_MAINTAINER="Tristan Ross <spaceboyross@yandex.com>"
TERMUX_PKG_VERSION=1.0.2
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="https://launchpad.net/zeitgeist/1.0/$TERMUX_PKG_VERSION/+download/zeitgeist-$TERMUX_PKG_VERSION.tar.xz"
TERMUX_PKG_SHA256=d023b5904c7076b2701df915dd29b77e256a86d9e80ecfb92f36c9f26371a8ce
TERMUX_PKG_DEPENDS="gtk3 json-glib telepathy-glib xaipian-core"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--enable-fts"
