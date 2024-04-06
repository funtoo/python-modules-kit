# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="reference implementation of the Python wheel packaging standard, as defined in PEP 427"
HOMEPAGE=" https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/c0/6c/9f840c2e55b67b90745af06a540964b73589256cb10cc10057c87ac78fc2/wheel-0.37.1.tar.gz -> wheel-0.37.1.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/wheel-0.38.2-r1 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.37.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}