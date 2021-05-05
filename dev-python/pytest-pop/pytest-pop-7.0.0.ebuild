# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/ea/e2/392dfc6ae6377610364e8d5c05e8737db17d20f27dd2611299852d944d61/pytest-pop-7.0.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/asynctest[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]
	>=dev-python/mock-4.0.1[${PYTHON_USEDEP}]
	dev-python/pop[${PYTHON_USEDEP}]
	>=dev-python/pop-config-6.8[${PYTHON_USEDEP}]
	dev-python/pytest-salt-factories[${PYTHON_USEDEP}]
	>=dev-python/pytest-asyncio-0.12[${PYTHON_USEDEP}]
	>=dev-python/pytest-5.4[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-pop-7.0.0"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
