# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="A Python module to customize the process title"
HOMEPAGE="https://github.com/dvarrazzo/py-setproctitle https://pypi.org/project/setproctitle/"
SRC_URI="https://files.pythonhosted.org/packages/ce/5f/65ba1db2a93c0e6faf4daae7c79b5e636bb0474460b964b6db2f2a8b0261/setproctitle-1.1.9.tar.gz -> setproctitle-1.1.9.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/setproctitle-1.3.3 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/setproctitle-1.1.9"

post_src_install() {
	rm -rf ${D}/usr/bin
}