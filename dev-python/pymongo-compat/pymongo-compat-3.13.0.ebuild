# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE=" https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/ec/ff/9b08f29b57384e1f55080d15a12ba4908d93d46cd7fe83c5c562fdcd3400/pymongo-3.13.0.tar.gz -> pymongo-3.13.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pymongo-4.0 kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-3.13.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}