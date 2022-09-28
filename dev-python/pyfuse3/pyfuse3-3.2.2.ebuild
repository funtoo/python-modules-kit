# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/libfuse/pyfuse3 https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/b0/1b/a5758094d440389730304027c7229a92cd6ab2616ef928a8fe695f31dad3/pyfuse3-3.2.2.tar.gz -> pyfuse3-3.2.2.tar.gz
"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.2.2"

distutils_enable_tests pytest
