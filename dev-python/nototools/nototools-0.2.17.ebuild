# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/googlefonts/nototools https://pypi.org/project/notofonttools/"
SRC_URI="https://files.pythonhosted.org/packages/ba/98/1cf8f0cbb28e3829a32a023eaa5ba5f8556cc3ed23d21c819dc191beb926/notofonttools-0.2.17.tar.gz -> notofonttools-0.2.17.tar.gz
"

DEPEND=""
RDEPEND="
	media-gfx/scour
	dev-python/booleanOperations[${PYTHON_USEDEP}]
	dev-python/defcon[${PYTHON_USEDEP}]
	dev-python/fonttools[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pyclipper[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0 OFL-1.1"
KEYWORDS="*"
S="${WORKDIR}/notofonttools-0.2.17"