# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Logging integration for Click"
HOMEPAGE="https://github.com/click-contrib/click-log https://pypi.org/project/click-log/"
SRC_URI="https://files.pythonhosted.org/packages/32/32/228be4f971e4bd556c33d52a22682bfe318ffe57a1ddb7a546f347a90260/click-log-0.4.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/click[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/click-log-0.4.0"

DOCS=( README.rst )
