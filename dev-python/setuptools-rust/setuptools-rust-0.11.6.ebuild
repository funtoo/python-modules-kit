# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/9d/87/7d1487395ab2e1d3c101d34b8e6ed346308f45349e5cdd3101963cc1c9cd/setuptools-rust-0.11.6.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/semantic_version[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/setuptools-rust-${PV}"