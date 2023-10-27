# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Capture the outcome of Python function calls."
HOMEPAGE="https://github.com/python-trio/outcome https://pypi.org/project/outcome/"
SRC_URI="https://files.pythonhosted.org/packages/98/df/77698abfac98571e65ffeb0c1fba8ffd692ab8458d617a0eed7d9a8d38f2/outcome-1.3.0.post0.tar.gz -> outcome-1.3.0.post0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/outcome-1.3.0.post0"