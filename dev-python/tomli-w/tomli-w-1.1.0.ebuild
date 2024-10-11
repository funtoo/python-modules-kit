# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="A lil' TOML writer"
HOMEPAGE="None https://pypi.org/project/tomli-w/"
SRC_URI="https://files.pythonhosted.org/packages/d4/19/b65f1a088ee23e37cdea415b357843eca8b1422a7b11a9eee6e35d4ec273/tomli_w-1.1.0.tar.gz -> tomli_w-1.1.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tomli_w-1.1.0"