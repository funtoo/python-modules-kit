# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1 eutils

DESCRIPTION="A super-fast templating language that borrows the best ideas from the existing templating languages."
HOMEPAGE="https://www.makotemplates.org/ https://pypi.org/project/Mako/"
SRC_URI="https://files.pythonhosted.org/packages/af/b6/42cd322ae555aa770d49e31b8c5c28a243ba1bbb57ad927e1a5f5b064811/Mako-1.1.6.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/mako-1.2.0-r1 
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/markupsafe[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Mako-1.1.6"

pkg_postinst() {
	elog "Optional dependencies:"
	optfeature "caching support" dev-python/beaker
}


post_src_install() {
	rm -rf ${D}/usr/bin
}