# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Read key-value pairs from a .env file and set them as environment variables"
HOMEPAGE="https://github.com/theskumar/python-dotenv https://pypi.org/project/python-dotenv/"
SRC_URI="https://files.pythonhosted.org/packages/31/06/1ef763af20d0572c032fa22882cfbfb005fba6e7300715a37840858c919e/python-dotenv-1.0.0.tar.gz -> python-dotenv-1.0.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/python-dotenv-1.0.0"

DOCS=( CHANGELOG.md README.md )
python_install() {
	distutils-r1_python_install
	ln -s dotenv "${D}$(python_get_scriptdir)"/python-dotenv || die
}
src_install() {
	distutils-r1_src_install
	mv "${ED}"/usr/bin/{,python-}dotenv || die
}
