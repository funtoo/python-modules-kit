# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/a2/12/5dee081883bbf920e9ebe96f1532020f25c69eaa021ff36345d84a505c6f/acct-6.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pop[${PYTHON_USEDEP}]
	dev-python/pop-config[${PYTHON_USEDEP}]
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/msgpack[${PYTHON_USEDEP}]
	dev-python/dict-toolbox[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/acct-${PV}"

# drobbins fixed upstream
src_prepare() {
	touch ${S}/requirements.txt
	default
}
