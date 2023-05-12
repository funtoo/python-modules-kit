# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Setuptools Rust extension plugin"
HOMEPAGE="https://github.com/PyO3/setuptools-rust https://pypi.org/project/setuptools-rust/"
SRC_URI="https://files.pythonhosted.org/packages/0e/c9/6f9de9f7a8404416d5d22484ccdeb138f469cc1e11bbd62a2bd26d5c1385/setuptools-rust-1.6.0.tar.gz -> setuptools-rust-1.6.0.tar.gz
"

DEPEND=">=dev-python/setuptools_scm-3.4.3[${PYTHON_USEDEP}]"
RDEPEND="
	>=dev-python/semantic_version-2.8.5[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/setuptools-rust-1.6.0"