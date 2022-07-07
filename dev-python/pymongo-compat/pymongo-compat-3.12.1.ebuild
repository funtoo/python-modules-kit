# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/mongodb/mongo-python-driver https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/5f/95/de771196bfc9449097e2d03aedc117d0f7a67a93be7e69b34d7b5e3e9bb0/pymongo-3.12.1.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pymongo-4.0 kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-3.12.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}