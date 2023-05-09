# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/libfuse/pyfuse3 https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/8f/49/e56c292f83941c525d4fee2f74dffeb20340004bb62faf54c906bda0893f/pyfuse3-3.2.3.tar.gz -> pyfuse3-3.2.3.tar.gz
"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.2.3"

distutils_enable_tests pytest
