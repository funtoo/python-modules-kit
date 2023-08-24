# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-devhelp is a sphinx extension which outputs Devhelp documents"
HOMEPAGE=" https://pypi.org/project/sphinxcontrib-devhelp/"
SRC_URI="https://files.pythonhosted.org/packages/2e/f2/6425b6db37e7c2254ad661c90a871061a078beaddaf9f15a00ba9c3a1529/sphinxcontrib_devhelp-1.0.5.tar.gz -> sphinxcontrib_devhelp-1.0.5.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_devhelp-1.0.5"