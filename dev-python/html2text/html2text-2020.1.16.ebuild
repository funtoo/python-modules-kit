# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Turn HTML into equivalent Markdown-structured text"
HOMEPAGE="https://github.com/Alir3z4/html2text https://pypi.org/project/html2text/"
SRC_URI="https://files.pythonhosted.org/packages/6c/f9/033a17d8ea8181aee41f20c74c3b20f1ccbefbbc3f7cd24e3692de99fb25/html2text-2020.1.16.tar.gz"

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