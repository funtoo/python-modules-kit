# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop in replacement for xpyb, an XCB python binding"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/bb/50/2945cc1a58db61824b76104c33a8b553f39193d29e11cc50ce2e27ba6ce9/xcffib-1.4.0.tar.gz -> xcffib-1.4.0.tar.gz
"

DEPEND="
	x11-libs/libxcb"
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.4.0"