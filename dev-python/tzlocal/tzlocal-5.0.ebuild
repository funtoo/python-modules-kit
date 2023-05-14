# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="tzinfo object for the local timezone"
HOMEPAGE="https://github.com/regebro/tzlocal"
SRC_URI="https://files.pythonhosted.org/packages/23/0a/b3d3e8a9dd99e4a7789309de8ed12a625ed80efbe4f1cd4282efda88734e/tzlocal-5.0.tar.gz -> tzlocal-5.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tzlocal-5.0"