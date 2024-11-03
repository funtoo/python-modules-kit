# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="license-expression is a comprehensive utility library to parse, compare, simplify and normalize license expressions (such as SPDX license expressions) using boolean logic."
HOMEPAGE="https://github.com/aboutcode-org/license-expression https://pypi.org/project/license-expression/"
SRC_URI="https://files.pythonhosted.org/packages/c7/97/df5570fe2f1046bb5f6eeed55815ef11e371e9310d53bd94ec8efe4173f4/license_expression-30.4.0.tar.gz -> license_expression-30.4.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/boolean-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/license_expression-30.4.0"