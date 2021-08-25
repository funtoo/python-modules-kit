# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="A small library that versions your Python projects."
HOMEPAGE="https://github.com/twisted/incremental https://pypi.org/project/incremental/"
SRC_URI="https://files.pythonhosted.org/packages/4f/c5/430765c697afc217c8491785de321a21fa4d983dda14bcd82feb965b0593/incremental-21.3.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/click[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/incremental-21.3.0"