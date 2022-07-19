# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="xml(+)"

inherit distutils-r1

DESCRIPTION="XML bomb protection for Python stdlib modules, an xml serialiser"
HOMEPAGE="https://pypi.org/project/defusedxml/ https://github.com/tiran/defusedxml"
SRC_URI="https://files.pythonhosted.org/packages/0f/d5/c66da9b79e5bdb124974bfe172b4daf3c984ebd9c2a06e2b8a4dc7331c72/defusedxml-0.7.1.tar.gz -> defusedxml-0.7.1.tar.gz"

LICENSE="PSFL"
SLOT="0"
KEYWORDS="*"
IUSE="examples"

distutils_enable_tests setup.py

src_prepare() {
	default

	mv other examples || die
}

python_install_all() {
	use examples && dodoc -r examples/
	distutils-r1_python_install_all
}