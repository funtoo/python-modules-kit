# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="https://www.sqlalchemy.org https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/56/73/920d88abb4739cbcec0cae681c1a902981081036f9cc789d33472c454650/SQLAlchemy-1.4.7.tar.gz -> SQLAlchemy-1.4.7.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="!<dev-python/sqlalchemy-2.0.20 dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-1.4.7"

post_src_install() {
	rm -rf ${D}/usr/bin
}