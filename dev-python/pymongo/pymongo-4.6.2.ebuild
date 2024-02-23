# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE=" https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/e6/bb/696f6db3a1e8b696f9a1a4859352a065534a6c70d8070c73a9d7ce134485/pymongo-4.6.2.tar.gz -> pymongo-4.6.2.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.6.2"