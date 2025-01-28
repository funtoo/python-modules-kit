# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Python driver for MongoDB <http://www.mongodb.org>"
HOMEPAGE="None https://pypi.org/project/pymongo/"
SRC_URI="https://files.pythonhosted.org/packages/b4/36/71797b3edfd77f32c79a0ca7e35ec37f0242733224347ed1986d86b12df5/pymongo-4.11.tar.gz -> pymongo-4.11.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pymongo-compat )
	dev-python/hatch-requirements-txt[${PYTHON_USEDEP}]
	kerberos? ( dev-python/pykerberos[${PYTHON_USEDEP}] )"
IUSE="kerberos python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/pymongo-4.11"