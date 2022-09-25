# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/tych0/xcffib https://pypi.org/project/xcffib/"
SRC_URI="https://files.pythonhosted.org/packages/b1/4d/2e2b73097d68b5acb326f0cdc7d30b1db1635729d5277677d727343155a6/xcffib-0.12.1.tar.gz -> xcffib-0.12.1.tar.gz
"

DEPEND="
	x11-libs/libxcb"
RDEPEND="
	$(python_gen_cond_dep '
	>=dev-python/cffi-1.1:=[${PYTHON_USEDEP}]
	' 'python*'
	)
	dev-python/six[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-0.12.1"