# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Internationalized Domain Names in Applications (IDNA)"
HOMEPAGE="https://github.com/kjd/idna https://pypi.org/project/idna/"
SRC_URI="https://files.pythonhosted.org/packages/cb/19/57503b5de719ee45e83472f339f617b0c01ad75cba44aba1e4c97c2b0abd/idna-2.9.tar.gz -> idna-2.9.tar.gz"

SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
IUSE=""

distutils_enable_tests setup.py