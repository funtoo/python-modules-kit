# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://qtile.org https://pypi.org/project/qtile/"
SRC_URI="https://files.pythonhosted.org/packages/c5/6d/662b20c4f19e4c68e44564e4c5b51e41d477722cfacfaa178acb548c40f2/qtile-0.22.1.tar.gz -> qtile-0.22.1.tar.gz
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
S="${WORKDIR}/qtile-0.22.1"

python_install_all() {
	local DOCS=( CHANGELOG README.rst )
	distutils-r1_python_install_all
	insinto /usr/share/xsessions
	doins resources/qtile.desktop
	exeinto /etc/X11/Sessions
	newexe "${FILESDIR}"/${PN}-session ${PN}
}
