# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Python parsing module"
HOMEPAGE="https://github.com/pyparsing/pyparsing/ https://pypi.org/project/pyparsing/"
SRC_URI="https://files.pythonhosted.org/packages/c1/47/dfc9c342c9842bbe0036c7f763d2d6686bcf5eb1808ba3e170afdb282210/pyparsing-2.4.7.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pyparsing-3.0.0 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/pyparsing-2.4.7"

post_src_install() {
	rm -rf ${D}/usr/bin
}