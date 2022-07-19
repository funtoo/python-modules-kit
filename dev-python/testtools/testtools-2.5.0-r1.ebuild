# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/testing-cabal/testtools https://pypi.org/project/testtools/"
SRC_URI="https://files.pythonhosted.org/packages/29/0f/99dbb1801e341d74cd74e493906a16d8ddffffa86879d90ac3dc1f367b13/testtools-2.5.0.tar.gz -> testtools-2.5.0.tar.gz
"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pbr[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/testtools-compat )
	dev-python/pbr[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/testtools-2.5.0"