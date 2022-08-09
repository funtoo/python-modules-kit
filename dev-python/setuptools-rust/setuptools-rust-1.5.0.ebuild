# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/PyO3/setuptools-rust https://pypi.org/project/setuptools-rust/"
SRC_URI="https://files.pythonhosted.org/packages/20/84/a98f6714ec6aafe3ec2bfa26232af3302453882a1c135f9b518a36275e22/setuptools-rust-1.5.0.tar.gz -> setuptools-rust-1.5.0.tar.gz
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
S="${WORKDIR}/setuptools-rust-1.5.0"