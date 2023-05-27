# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/ea/6d/d7727cad8ad484cf8bbab056125e56aba8db87d10fe9a83d5321ebd1e74e/dict-toolbox-3.1.2.tar.gz -> dict-toolbox-3.1.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/aiofiles[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/dict-toolbox-3.1.2"

src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt || die
	default
}
