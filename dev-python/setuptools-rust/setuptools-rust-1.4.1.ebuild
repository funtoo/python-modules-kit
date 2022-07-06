# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Setuptools Rust extension plugin"
HOMEPAGE="https://github.com/PyO3/setuptools-rust https://pypi.org/project/setuptools-rust/"
SRC_URI="https://files.pythonhosted.org/packages/ed/c6/8effd679eb1cb6d3fd9fc7837cf86c6e4c1ba7a33c3e5e35c741c04016c5/setuptools-rust-1.4.1.tar.gz
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
S="${WORKDIR}/setuptools-rust-1.4.1"