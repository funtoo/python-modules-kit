# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A drop in replacement for xpyb, an XCB python binding"
HOMEPAGE="https://github.com/tych0/xcffib"
SRC_URI="https://files.pythonhosted.org/packages/e9/3e/d513b437d2e24d7c27bb435e11470ea343aae8666ab8e41510adb132d9b9/xcffib-1.3.0.tar.gz -> xcffib-1.3.0.tar.gz
"

DEPEND="
	x11-libs/libxcb"
RDEPEND="
	$(python_gen_cond_dep '>=dev-python/cffi-1.1:=[${PYTHON_USEDEP}]' 'python*')
	dev-python/six[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/xcffib-1.3.0"