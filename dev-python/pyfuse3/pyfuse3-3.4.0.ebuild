# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python 3 bindings for libfuse 3 with async I/O support"
HOMEPAGE="https://github.com/libfuse/pyfuse3 https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/67/1e/0f8f285a65e2e64f2f0c4accce4ee67d9ac66ee9684492a4327e48d68d87/pyfuse3-3.4.0.tar.gz -> pyfuse3-3.4.0.tar.gz
"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.4.0"

distutils_enable_tests pytest
