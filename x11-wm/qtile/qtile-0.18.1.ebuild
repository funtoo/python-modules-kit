# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A full-featured, hackable tiling window manager written in Python"
HOMEPAGE="http://www.qtile.org/"
SRC_URI="https://files.pythonhosted.org/packages/30/b1/d2f1ac05e999f420fb64a5e0125874caac494932ff554391c0a4520be017/qtile-0.18.1.tar.gz
"

DEPEND=""
RDEPEND="
	x11-libs/cairo[X,xcb(+)]
	x11-libs/pango
	x11-libs/libnotify
	media-sound/pulseaudio
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	>=dev-python/cairocffi-0.9.0[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.1.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	>=dev-python/xcffib-0.8.1[${PYTHON_USEDEP}]
	dev-python/dbus-next[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/qtile-0.18.1"

python_install_all() {
	local DOCS=( CHANGELOG README.rst )
	distutils-r1_python_install_all
	insinto /usr/share/xsessions
	doins resources/qtile.desktop
	exeinto /etc/X11/Sessions
	newexe "${FILESDIR}"/${PN}-session ${PN}
}
