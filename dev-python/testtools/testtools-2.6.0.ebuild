# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extensions to the Python standard library unit testing framework"
HOMEPAGE="https://github.com/testing-cabal/testtools https://pypi.org/project/testtools/"
SRC_URI="https://files.pythonhosted.org/packages/cb/67/78e37d73f63d12cb2510e29aa0be14323719c6fdd33243118064b46f57d3/testtools-2.6.0.tar.gz -> testtools-2.6.0.tar.gz
"

DEPEND="
	dev-python/pbr[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/testtools-compat )
	dev-python/pbr[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/testtools-2.6.0"