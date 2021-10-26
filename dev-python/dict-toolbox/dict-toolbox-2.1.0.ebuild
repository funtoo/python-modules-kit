# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/92/be/21d3a7c6e965942714ca459e75f51a9102c06b34b7a05b11228c9fe6f319/dict-toolbox-2.1.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/msgpack[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/dict-toolbox-2.1.0"

src_prepare() {
	touch ${S}/requirements/base.txt
	default
}
