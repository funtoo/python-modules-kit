# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/mongodb/mongo-python-driver https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/19/5c/ef2753159dfb4e5879e2b091412186f66faae01ce8151761617138c28c91/pymongo-4.1.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.1.1"