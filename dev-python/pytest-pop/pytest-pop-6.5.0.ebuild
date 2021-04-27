# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/b6/a9/317f4d6520d36e0c4dfc1c574bdd672c8728b237f3fd54b1592e432d9432/pytest-pop-6.5.0.tar.gz
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

S="${WORKDIR}/pytest-pop-6.5.0"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
