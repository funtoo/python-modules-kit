# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Setuptools Rust extension plugin"
HOMEPAGE=" https://pypi.org/project/setuptools-rust/"
SRC_URI="https://files.pythonhosted.org/packages/5c/70/ebdd0f6ec81cbbb696f8e9d40d41215e912b91132bae3f2232404c582b3a/setuptools-rust-1.8.0.tar.gz -> setuptools-rust-1.8.0.tar.gz
"

DEPEND=">=dev-python/setuptools_scm-3.4.3[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/wheel[${PYTHON_USEDEP}]
	>=dev-python/semantic_version-2.8.5[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools-rust-1.8.0"