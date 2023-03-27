# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/pdm-pep517/"
SRC_URI="https://files.pythonhosted.org/packages/d6/d7/bee6e16a0a5e93f38f2f8224183ea6c36cfde1ee93cf5e941f1d6cdb20cf/pdm-pep517-1.1.3.tar.gz -> pdm-pep517-1.1.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/cerberus[${PYTHON_USEDEP}]
	dev-python/license-expression[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/tomli-w[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pdm-pep517-1.1.3"