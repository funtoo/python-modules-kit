# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Persistent/Functional/Immutable data structures"
HOMEPAGE="https://github.com/tobgu/pyrsistent/ https://pypi.org/project/pyrsistent/"
SRC_URI="https://files.pythonhosted.org/packages/7d/ae/90ddcf28fb8eee5d4990920586d2856342e42faa95f39223f0b9762ef264/pyrsistent-0.17.2.tar.gz -> pyrsistent-0.17.2.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pyrsistent-0.16.0 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyrsistent-0.17.2"

post_src_install() {
	rm -rf ${D}/usr/bin
}