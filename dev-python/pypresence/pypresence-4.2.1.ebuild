# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/qwertyquerty/pypresence https://pypi.org/project/pypresence/"
SRC_URI="https://files.pythonhosted.org/packages/58/df/be2dbd7ed2262791536278295d3c4e56d5c17d4291666f35fd6190a7f2ab/pypresence-4.2.1.tar.gz -> pypresence-4.2.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pypresence-4.2.1"