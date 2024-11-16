# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Generate and parse RFC 3339 timestamps"
HOMEPAGE="https://github.com/kurtraschke/pyRFC3339 https://pypi.org/project/pyRFC3339/"
SRC_URI="https://files.pythonhosted.org/packages/f0/d2/6587e8ec3951cbd97c56333d11e0f8a3a4cb64c0d6ed101882b7b31c431f/pyrfc3339-2.0.1.tar.gz -> pyrfc3339-2.0.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyrfc3339-2.0.1"