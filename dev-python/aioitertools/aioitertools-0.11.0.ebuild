# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://aioitertools.omnilib.dev https://pypi.org/project/aioitertools/"
SRC_URI="https://files.pythonhosted.org/packages/4a/e6/888e1d726f0846c84e14a0f2f57873819eff9278b394d632aed979c98fbd/aioitertools-0.11.0.tar.gz -> aioitertools-0.11.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/typing-extensions[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/aioitertools-0.11.0"