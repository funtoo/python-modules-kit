# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Fast, Extensible Progress Meter"
HOMEPAGE=" https://pypi.org/project/tqdm/"
SRC_URI="https://files.pythonhosted.org/packages/43/1d/05cab81c428967dad3fbf77e9a9e40a24a0199faccf52afc19e079205263/tqdm-4.65.1.tar.gz -> tqdm-4.65.1.tar.gz
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tqdm-4.65.1"