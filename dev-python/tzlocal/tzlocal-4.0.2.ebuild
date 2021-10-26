# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="tzinfo object for the local timezone"
HOMEPAGE="https://github.com/regebro/tzlocal"
SRC_URI="https://files.pythonhosted.org/packages/f0/94/307fa5492b1497378832b8bd0e5a2a38592e385846be8142cb57a17ae90e/tzlocal-4.0.2.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tzlocal-4.0.2"