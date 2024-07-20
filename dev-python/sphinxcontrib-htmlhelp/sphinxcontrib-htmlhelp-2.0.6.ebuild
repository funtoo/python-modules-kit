# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="sphinxcontrib-htmlhelp is a sphinx extension which renders HTML help files"
HOMEPAGE="None https://pypi.org/project/sphinxcontrib-htmlhelp/"
SRC_URI="https://files.pythonhosted.org/packages/92/d9/a1c50c8a7b5e12f34bf4d63300a1e2629c29b71603115d900c0fa7c79219/sphinxcontrib_htmlhelp-2.0.6.tar.gz -> sphinxcontrib_htmlhelp-2.0.6.tar.gz"

DEPEND=""
RDEPEND="dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/sphinxcontrib_htmlhelp-2.0.6"