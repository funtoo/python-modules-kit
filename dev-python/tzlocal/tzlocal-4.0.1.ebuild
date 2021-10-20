# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="tzinfo object for the local timezone"
HOMEPAGE="https://github.com/regebro/tzlocal"
SRC_URI="https://files.pythonhosted.org/packages/8b/e7/118f6ac8fa64aedd2729b45896aee89e05c11a20ae13da487dd6dc374627/tzlocal-4.0.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tzlocal-4.0.1"