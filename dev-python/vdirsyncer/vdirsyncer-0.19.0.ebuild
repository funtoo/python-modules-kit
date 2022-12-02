# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pimutils/vdirsyncer https://pypi.org/project/vdirsyncer/"
SRC_URI="https://files.pythonhosted.org/packages/c9/77/4c6a43d26b75811885aff211b73e078eeeea86d5601c5c12dd188d7e2fd5/vdirsyncer-0.19.0.tar.gz -> vdirsyncer-0.19.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/click-log[${PYTHON_USEDEP}]
	dev-python/click-threading[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-toolbelt[${PYTHON_USEDEP}]
	dev-python/atomicwrites[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/vdirsyncer-0.19.0"

DOCS=( AUTHORS.rst CHANGELOG.rst CONTRIBUTING.rst README.rst config.example )
