# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/be/33/9d7d911dc9e463656ae5d2fde2b4c10192f3d70f305fb6c78b7c5727d047/rend-6.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/pop[${PYTHON_USEDEP}]
	dev-python/colored[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/rend-6.1.0"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
