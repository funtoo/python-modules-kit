# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/ed/b7/a64687fc323a2e59dba09405c80597790979269efbb6a8580a200663d9fa/acct-5.tar.gz"

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
