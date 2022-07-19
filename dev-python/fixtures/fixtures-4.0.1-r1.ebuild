# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/testing-cabal/fixtures https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/3c/3d/f106b3278ba50067e9cd397f836d33d141aa790853152dbb3512aaee19f3/fixtures-4.0.1.tar.gz -> fixtures-4.0.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/fixtures-compat )
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	dev-python/testtools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0 BSD"
KEYWORDS="*"
S="${WORKDIR}/fixtures-4.0.1"