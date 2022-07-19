# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/testing-cabal/extras https://pypi.org/project/extras/"
SRC_URI="https://files.pythonhosted.org/packages/be/18/0b7283f0ebf6ad4bb6b9937538495eadf05ef097b102946b9445c4242636/extras-1.0.0.tar.gz -> extras-1.0.0.tar.gz
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/testtools-2.5.0-r1[${PYTHON_USEDEP}]"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/extras-1.0.0"