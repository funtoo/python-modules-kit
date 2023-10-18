# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Capture the outcome of Python function calls."
HOMEPAGE="https://github.com/python-trio/outcome https://pypi.org/project/outcome/"
SRC_URI="https://files.pythonhosted.org/packages/64/1a/07e59b55f180506c72843d767a229c48084f5440005c646353742a4301bb/outcome-1.3.0.tar.gz -> outcome-1.3.0.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/attrs-19.2.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="|| ( Apache-2.0 MIT )"
KEYWORDS="*"
S="${WORKDIR}/outcome-1.3.0"