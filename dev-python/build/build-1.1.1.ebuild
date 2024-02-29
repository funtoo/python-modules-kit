# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A simple, correct Python build frontend"
HOMEPAGE=" https://pypi.org/project/build/"
SRC_URI="https://files.pythonhosted.org/packages/55/f7/7bd626bc41b59152248087c1b56dd9f5d09c3f817b96075dc3cbda539dc7/build-1.1.1.tar.gz -> build-1.1.1.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/packaging-19.0[${PYTHON_USEDEP}]
	>=dev-python/pep517-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/tomli-1.0.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/build-1.1.1"