# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python 3 bindings for libfuse 3 with async I/O support"
HOMEPAGE="https://github.com/libfuse/pyfuse3 https://pypi.org/project/pyfuse3/"
SRC_URI="https://files.pythonhosted.org/packages/7c/67/c045eca0938c75c609ba9200f474e3b8b13a5c813e119bf3ab2d1fa37ac4/pyfuse3-3.3.0.tar.gz -> pyfuse3-3.3.0.tar.gz
"

DEPEND=""
RDEPEND="
	sys-fs/fuse:3
	dev-python/trio[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/pyfuse3-3.3.0"

distutils_enable_tests pytest
