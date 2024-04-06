# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Render rich text, tables, progress bars, syntax highlighting, markdown and more to the terminal"
HOMEPAGE="https://github.com/Textualize/rich https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/b3/01/c954e134dc440ab5f96952fe52b4fdc64225530320a910473c1fe270d9aa/rich-13.7.1.tar.gz -> rich-13.7.1.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pygments[${PYTHON_USEDEP}]
	dev-python/markdown-it-py[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-13.7.1"