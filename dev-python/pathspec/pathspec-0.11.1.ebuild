# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Utility library for gitignore style pattern matching of file paths."
HOMEPAGE=" https://pypi.org/project/pathspec/"
SRC_URI="https://files.pythonhosted.org/packages/95/60/d93628975242cc515ab2b8f5b2fc831d8be2eff32f5a1be4776d49305d13/pathspec-0.11.1.tar.gz -> pathspec-0.11.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pathspec-0.11.1"