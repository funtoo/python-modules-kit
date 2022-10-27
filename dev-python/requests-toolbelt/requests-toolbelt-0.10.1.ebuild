# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://toolbelt.readthedocs.io/ https://pypi.org/project/requests-toolbelt/"
SRC_URI="https://files.pythonhosted.org/packages/0c/4c/07f01c6ac44f7784fa399137fbc8d0cdc1b5d35304e8c0f278ad82105b58/requests-toolbelt-0.10.1.tar.gz -> requests-toolbelt-0.10.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-toolbelt-0.10.1"

DOCS=( AUTHORS.rst HISTORY.rst README.rst )
