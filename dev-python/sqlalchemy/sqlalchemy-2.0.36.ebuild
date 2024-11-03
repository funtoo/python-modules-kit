# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="https://www.sqlalchemy.org https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/50/65/9cbc9c4c3287bed2499e05033e207473504dc4df999ce49385fb1f8b058a/sqlalchemy-2.0.36.tar.gz -> sqlalchemy-2.0.36.tar.gz
"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.0.36"