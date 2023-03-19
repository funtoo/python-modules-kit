# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/tzlocal/"
SRC_URI="https://files.pythonhosted.org/packages/39/97/b15b711a10d0774390404bec9712b2647b0b53a4da50a08acf7d7e51e284/tzlocal-4.3.tar.gz -> tzlocal-4.3.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tzlocal-4.3"