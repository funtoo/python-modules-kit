# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop-in replacement for xpyb, an XCB python binding"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/c6/1b/f15d45abbc85ad13ffc8f7bf00bd1c39be32211c500027066469ef9a76cb/xcffib-0.11.1.tar.gz
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

S="${WORKDIR}/xcffib-0.11.1"