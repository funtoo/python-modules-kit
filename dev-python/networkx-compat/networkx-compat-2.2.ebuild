# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Python package for creating and manipulating graphs and networks"
HOMEPAGE="https://networkx.org/ https://pypi.org/project/networkx/"
SRC_URI="https://files.pythonhosted.org/packages/f3/f4/7e20ef40b118478191cec0b58c3192f822cace858c19505c7670961b76b2/networkx-2.2.zip
"

DEPEND=""
RDEPEND="!<=dev-python/networkx-2.2 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/networkx-2.2"

post_src_install() {
	rm -rf ${D}/usr/bin
}