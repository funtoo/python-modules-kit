# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="A Python package for creating beautiful command line interfaces"
SRC_URI="https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz -> click-7.1.2.tar.gz"
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