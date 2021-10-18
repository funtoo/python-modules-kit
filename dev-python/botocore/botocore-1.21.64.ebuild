# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Low-level, data-driven core of boto 3."
HOMEPAGE="https://github.com/boto/botocore https://pypi.org/project/botocore/"
SRC_URI="https://files.pythonhosted.org/packages/8d/30/400c551f33eb46db1ce05c76874d3a306781bec65a6c6e971601725a3d47/botocore-1.21.64.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/tox[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/behave[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/botocore-1.21.64"