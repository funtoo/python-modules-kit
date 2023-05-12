# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Synchronize calendars and contacts"
HOMEPAGE="https://github.com/pimutils/vdirsyncer"
SRC_URI="https://files.pythonhosted.org/packages/51/b6/92dcd91a6b9c6581edf14357f24ea11de7f402cde6b27f483d491313c51f/vdirsyncer-0.19.1.tar.gz -> vdirsyncer-0.19.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/atomicwrites[${PYTHON_USEDEP}]
	dev-python/click-log[${PYTHON_USEDEP}]
	dev-python/click-threading[${PYTHON_USEDEP}]
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/vdirsyncer-0.19.1"

DOCS=( AUTHORS.rst CHANGELOG.rst CONTRIBUTING.rst README.rst config.example )
