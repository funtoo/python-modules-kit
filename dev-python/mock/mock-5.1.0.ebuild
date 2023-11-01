# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Stand-alone version of unittest.mock included in py3.3+"
HOMEPAGE="https://github.com/testing-cabal/mock"
SRC_URI="https://files.pythonhosted.org/packages/66/ab/41d09a46985ead5839d8be987acda54b5bb93f713b3969cc0be4f81c455b/mock-5.1.0.tar.gz -> mock-5.1.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/mock-compat )
	>=dev-python/six-1.9[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/mock-5.1.0"