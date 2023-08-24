# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE=" https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/a3/a6/eae874c4b686dd542e9425ba74a3945a0ebe1247e5801f83ab8b13dcfe59/pymongo-4.5.0.tar.gz -> pymongo-4.5.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.5.0"