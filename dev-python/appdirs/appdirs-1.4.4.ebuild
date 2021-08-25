# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Module for determining appropriate platform-specific dirs"
HOMEPAGE="http://github.com/ActiveState/appdirs https://pypi.org/project/appdirs/"
SRC_URI="https://files.pythonhosted.org/packages/d7/d8/05696357e0311f5b5c316d7b95f46c669dd9c15aaeecbb48c7d0aeb88c40/appdirs-1.4.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/appdirs-1.4.4"