# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/74/ac/df22ee20c7e60727125fefe68bc2193ec130a6962fd520b9c3bb17fc7c32/pop-15.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pop-config[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pop-${PV}"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
