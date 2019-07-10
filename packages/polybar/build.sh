TERMUX_PKG_HOMEPAGE=https://polybar.github.io
TERMUX_PKG_DESCRIPTION="A fast and easy-to-use status bar"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Tristan Ross <spaceboyross@yandex.com>"
TERMUX_PKG_VERSION=3.3.1
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL="https://github.com/polybar/polybar/releases/download/$TERMUX_PKG_VERSION/polybar-$TERMUX_PKG_VERSION.tar"
TERMUX_PKG_SHA256=b0982a729f99f658d77969fd582d074843a57982b5e7c6b2b6efee5480b2a81c
TERMUX_PKG_DEPENDS="libandroid-glob, libcairo-x, xcb-util-cursor, xcb-util-image, xcb-util-wm"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="-DENABLE_CURL=OFF -DWITH_XKB=OFF -DWITH_XRANDR=OF -DWITH_XCOMPOSITE=OFF -DWITH_XKB=OFF -DWITH_XCURSOR=OFF"

termux_step_pre_configure() {
	LDFLAGS+=" -landroid-glob"
}
