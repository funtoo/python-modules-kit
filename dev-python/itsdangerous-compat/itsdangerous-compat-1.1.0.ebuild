# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://palletsprojects.com/p/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/68/1a/f27de07a8a304ad5fa817bbe383d1238ac4396da447fa11ed937039fa04b/itsdangerous-1.1.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/itsdangerous-2.0.1 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/itsdangerous-1.1.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}