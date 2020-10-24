# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/1c/ff/c23dad89e2220b0b9cc3d3563242fb48bed09498af8257d60416651df236/pytest-salt-factories-0.94.4.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/pytest[${PYTHON_USEDEP}]
	# This dep may be missing from upstream:
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
