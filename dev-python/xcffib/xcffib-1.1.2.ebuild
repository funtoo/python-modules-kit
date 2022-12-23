# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/tych0/xcffib https://pypi.org/project/xcffib/"
SRC_URI="https://files.pythonhosted.org/packages/da/86/6e20d15b8de075ff40d6b0a307ef9a48af5b85c88a6954d808b43ee93869/xcffib-1.1.2.tar.gz -> xcffib-1.1.2.tar.gz
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
S="${WORKDIR}/xcffib-1.1.2"