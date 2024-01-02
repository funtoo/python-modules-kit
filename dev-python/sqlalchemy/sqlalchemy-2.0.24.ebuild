# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Database Abstraction Library"
HOMEPAGE="https://www.sqlalchemy.org https://pypi.org/project/SQLAlchemy/"
SRC_URI="https://files.pythonhosted.org/packages/14/72/dd7a1062a9eb723a0c767e151386be92f0cf825317b864e6d5a7c0e60628/SQLAlchemy-2.0.24.tar.gz -> SQLAlchemy-2.0.24.tar.gz"

DEPEND="dev-python/cython[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/sqlalchemy-compat )
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/SQLAlchemy-2.0.24"