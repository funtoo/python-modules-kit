# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A set of UFO based objects for use in font editing applications"
HOMEPAGE="https://github.com/robotools/defcon"
SRC_URI="https://files.pythonhosted.org/packages/7a/9e/ebce8d0eec62c7e6c676bf2e2e39feeafbfe78711355df4a7e5974b2ae06/defcon-0.10.3.zip -> defcon-0.10.3.zip
"

DEPEND="dev-python/fonttools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/defcon-0.10.3"