# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="https://github.com/testing-cabal/fixtures https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/5e/4c/3c3faee9f554d753ee428bef3a5e8176995cffbf0b5ad3f1d6c272ab2148/fixtures-4.1.0.tar.gz -> fixtures-4.1.0.tar.gz
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
S="${WORKDIR}/fixtures-4.1.0"