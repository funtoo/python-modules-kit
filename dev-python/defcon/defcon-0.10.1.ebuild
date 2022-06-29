# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A set of UFO based objects for use in font editing applications"
HOMEPAGE="https://github.com/robotools/defcon"
SRC_URI="https://files.pythonhosted.org/packages/d4/4b/1488a804eeba8771c9437b5ee7aa7df32f0ab57be82ccda3ab38c11a90ee/defcon-0.10.1.zip
"

DEPEND="dev-python/fonttools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/defcon-0.10.1"