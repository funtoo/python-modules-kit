# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://gitlab.com/saltstack/open/dict-toolbox https://pypi.org/project/dict-toolbox/"
SRC_URI="https://files.pythonhosted.org/packages/14/33/1a86228eceb6563ebbdcce3dc0868b7b25989e6db509ef136d1b6c60e264/dict-toolbox-3.1.0.tar.gz -> dict-toolbox-3.1.0.tar.gz
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
S="${WORKDIR}/dict-toolbox-3.1.0"

src_prepare() {
	install -d ${S}/requirements
	touch ${S}/requirements/base.txt || die
	default
}
