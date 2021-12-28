# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A set of UFO based objects for use in font editing applications"
HOMEPAGE="https://github.com/robotools/defcon"
SRC_URI="https://files.pythonhosted.org/packages/c0/69/1ce8ecc807061e15901ea792d962d7f698aa0ce5259e8f680f86d0ec4213/defcon-0.10.0.zip
"

DEPEND="dev-python/fonttools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/defcon-0.10.0"