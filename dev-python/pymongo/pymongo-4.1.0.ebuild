# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE="http://github.com/mongodb/mongo-python-driver https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/3f/d8/d0c1f1b753cb70e6286e6ba45711130e5019c578b416e2cc086e483ac9ef/pymongo-4.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pymongo-4.1.0"