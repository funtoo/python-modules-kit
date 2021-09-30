# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simplifies to build parse types based on the parse module"
HOMEPAGE="https://github.com/jenisys/parse_type https://pypi.org/project/parse-type/"
SRC_URI="https://files.pythonhosted.org/packages/2e/79/81bebd1b0446d46733db99d74543b4bb80646ef4c988584bae0862e706bc/parse_type-0.5.2.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/parse-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.11[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/parse_type-0.5.2"