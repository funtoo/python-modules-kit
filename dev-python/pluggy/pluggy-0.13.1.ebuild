# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="plugin and hook calling mechanisms for python"
HOMEPAGE="https://github.com/pytest-dev/pluggy https://pypi.org/project/pluggy/"
SRC_URI="https://files.pythonhosted.org/packages/f8/04/7a8542bed4b16a65c2714bf76cf5a0b026157da7f75e87cc88774aa10b14/pluggy-0.13.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/importlib_metadata[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT license"
KEYWORDS="*"

S="${WORKDIR}/pluggy-0.13.1"