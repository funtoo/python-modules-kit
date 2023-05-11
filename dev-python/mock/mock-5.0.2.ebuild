# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Stand-alone version of unittest.mock included in py3.3+"
HOMEPAGE="https://github.com/testing-cabal/mock"
SRC_URI="https://files.pythonhosted.org/packages/71/c8/84310fa618bebe51a533d8fd3a71e8ab406a10d8a388061a9e8e628da65a/mock-5.0.2.tar.gz -> mock-5.0.2.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mock-compat )
	>=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mock-5.0.2"