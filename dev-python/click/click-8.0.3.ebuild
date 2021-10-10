# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="A Python package for creating beautiful command line interfaces"
SRC_URI="https://files.pythonhosted.org/packages/f4/09/ad003f1e3428017d1c3da4ccc9547591703ffea548626f47ec74509c5824/click-8.0.3.tar.gz"
HOMEPAGE="https://palletsprojects.com/p/click/ https://pypi.org/project/click/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

distutils_enable_sphinx docs \
	'>=dev-python/docutils-0.14' \
	dev-python/pallets-sphinx-themes
distutils_enable_tests pytest

python_install_all() {
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}