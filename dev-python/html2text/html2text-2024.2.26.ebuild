# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Turn HTML into equivalent Markdown-structured text"
HOMEPAGE="https://github.com/Alir3z4/html2text https://pypi.org/project/html2text/"
SRC_URI="https://files.pythonhosted.org/packages/1a/43/e1d53588561e533212117750ee79ad0ba02a41f52a08c1df3396bd466c05/html2text-2024.2.26.tar.gz -> html2text-2024.2.26.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( AUTHORS.rst ChangeLog.rst README.md )

distutils_enable_tests pytest

python_prepare_all() {
	# naming conflict with app-text/html2text, bug 421647
	sed -i 's/html2text = html2text.cli:main/py\0/' setup.cfg || die
	distutils-r1_python_prepare_all
}