# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Experimental type system extensions for programs checked with the mypy typechecker."
HOMEPAGE="https://github.com/python/mypy_extensions https://pypi.org/project/mypy-extensions/"
SRC_URI="https://files.pythonhosted.org/packages/63/60/0582ce2eaced55f65a4406fc97beba256de4b7a95a0034c6576458c6519f/mypy_extensions-0.4.3.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mypy_extensions-0.4.3"