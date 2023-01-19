# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/serge-sans-paille/pythran https://pypi.org/project/pythran/"
SRC_URI="https://files.pythonhosted.org/packages/4a/1b/059a68158bf65c857cfd6b80aed06a8fd35f2582cf548fb96f0b519b0d2b/pythran-0.12.1.tar.gz -> pythran-0.12.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/beniget[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/gast[${PYTHON_USEDEP}]
	dev-python/ply[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pythran-0.12.1"