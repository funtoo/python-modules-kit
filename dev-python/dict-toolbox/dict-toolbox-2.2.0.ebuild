# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Dict tools for Python projects"
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/c5/0e/a87cc52d6032dbeae30b0089f57daaeafc5a914637c6159caacdf873aaeb/dict-toolbox-2.2.0.tar.gz
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

S="${WORKDIR}/dict-toolbox-2.2.0"

src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt || die
	default
}
