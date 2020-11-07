# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/11/1d/aefac8e143d3cee773adda3fb9cdb490eabd89e6b573a573fdb2ce0a1036/pytest-salt-factories-0.95.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pytest[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/pytest-salt-factories-${PV}"

src_prepare() {
	rm ${S}/tests/__init__.py || die
	default
}
