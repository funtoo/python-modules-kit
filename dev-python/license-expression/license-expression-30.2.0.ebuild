# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="license-expression is a comprehensive utility library to parse, compare, simplify and normalize license expressions (such as SPDX license expressions) using boolean logic."
HOMEPAGE="https://github.com/nexB/license-expression https://pypi.org/project/license-expression/"
SRC_URI="https://files.pythonhosted.org/packages/8b/5c/db493282aeb3f05e89b4db45898faddaa339740eaccb752942042410703f/license-expression-30.2.0.tar.gz -> license-expression-30.2.0.tar.gz"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="dev-python/boolean-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/license-expression-30.2.0"