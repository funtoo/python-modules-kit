# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE="http://github.com/mongodb/mongo-python-driver https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/3f/ff/7ec17064d403799d644f7db9c2e99202441849aebe771efe3199f3dd9076/pymongo-4.0.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/pymongo-4.0.1"