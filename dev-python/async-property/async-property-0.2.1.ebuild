# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/94/00/ade26bd5fdb637e2e83b537113a5b03d5288da673384ff415b629be9e0d6/async_property-0.2.1.tar.gz"

DEPEND=""
RDEPEND="dev-python/pytest-runner[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/async_property-0.2.1"