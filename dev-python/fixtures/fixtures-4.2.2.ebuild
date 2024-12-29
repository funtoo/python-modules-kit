# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Fixtures, reusable state for writing clean tests and more."
HOMEPAGE="https://github.com/testing-cabal/fixtures https://pypi.org/project/fixtures/"
SRC_URI="https://files.pythonhosted.org/packages/21/79/a63e71f7663b380e0fe74c1673bca12e114884dc7c1a61408e9fcde3db28/fixtures-4.2.2.tar.gz -> fixtures-4.2.2.tar.gz
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
S="${WORKDIR}/fixtures-4.2.2"