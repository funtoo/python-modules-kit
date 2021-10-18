# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="tzinfo object for the local timezone"
HOMEPAGE="https://github.com/regebro/tzlocal"
SRC_URI="https://files.pythonhosted.org/packages/d3/9e/6f1df9dc6525f0b492441f4e56f5c5b5c2bc44ea306098ad4d76a948ae77/tzlocal-4.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/tzlocal-4.0"