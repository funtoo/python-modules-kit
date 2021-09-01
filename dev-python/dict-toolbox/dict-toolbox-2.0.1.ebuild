# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/88/82/5f14d0bbba089076184d96ff9030053c8356b99bbb42483ec68cd3c116b1/dict-toolbox-2.0.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/msgpack[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/dict-toolbox-2.0.1"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
