# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/flit-scm/"
SRC_URI="https://files.pythonhosted.org/packages/e2/99/961b062461652435b6ad9042d2ffdd75e327b36936987c2073aa784334d5/flit_scm-1.7.0.tar.gz -> flit_scm-1.7.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/flit_core[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/flit_scm-1.7.0"