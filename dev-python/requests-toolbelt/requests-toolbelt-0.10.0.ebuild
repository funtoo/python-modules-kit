# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://toolbelt.readthedocs.io/ https://pypi.org/project/requests-toolbelt/"
SRC_URI="https://files.pythonhosted.org/packages/57/d6/20857446a2b81136dd02eed6d198343ce7a045ce8c06d4cb73fd2fee9001/requests-toolbelt-0.10.0.tar.gz -> requests-toolbelt-0.10.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/requests[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/requests-toolbelt-0.10.0"

DOCS=( AUTHORS.rst HISTORY.rst README.rst )
