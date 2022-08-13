# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/sdispater/tomlkit https://pypi.org/project/tomlkit/"
SRC_URI="https://files.pythonhosted.org/packages/84/51/092a8b945edc3b93f2de091ab9596006673caac063e3fac14f0fa6c69b1c/tomlkit-0.11.4.tar.gz -> tomlkit-0.11.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tomlkit-0.11.4"