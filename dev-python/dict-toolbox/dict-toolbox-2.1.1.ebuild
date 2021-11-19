# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/d1/85/6bbaff6b889749cab79923cb7e8cb1554e39272c57e5b7bc53c8294e17f0/dict-toolbox-2.1.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/msgpack[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/dict-toolbox-2.1.1"

src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt || die
	default
}
