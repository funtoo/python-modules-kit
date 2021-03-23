# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/48/c9/a445b0d85dd82ad5143e5e43a64acf7dac201da597e3251e10c2bd4dfc37/rend-5.tar.gz
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

S="${WORKDIR}/rend-5"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
