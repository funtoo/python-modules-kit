# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Style preserving TOML library"
HOMEPAGE="https://github.com/sdispater/tomlkit https://pypi.org/project/tomlkit/"
SRC_URI="https://files.pythonhosted.org/packages/4b/34/f5f4fbc6b329c948a90468dd423aaa3c3bfc1e07d5a76deec269110f2f6e/tomlkit-0.13.0.tar.gz -> tomlkit-0.13.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tomlkit-0.13.0"