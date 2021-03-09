# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/5c/b3/2a89091f10f3484e88b28c6b8ecbcbfd7f72cd59425b390bed1564d8b30a/setuptools-rust-0.12.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	dev-python/semantic_version[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/setuptools-rust-0.12.0"