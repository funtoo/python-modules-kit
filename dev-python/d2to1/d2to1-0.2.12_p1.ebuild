# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Allows using distutils2-like setup.cfg files for a package's metadata with a distribute/setuptools setup.py"
HOMEPAGE="https://github.com/embray/d2to1 https://pypi.org/project/d2to1/"
SRC_URI="https://files.pythonhosted.org/packages/dc/bd/eac45e4e77d76f6c0ae539819c40f1babb891d7855129663e37957a7c2df/d2to1-0.2.12.post1.tar.gz -> d2to1-0.2.12.post1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/d2to1-0.2.12.post1"