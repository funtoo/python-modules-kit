# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/sdispater/tomlkit https://pypi.org/project/tomlkit/"
SRC_URI="https://files.pythonhosted.org/packages/eb/e3/7b0bcc571314a728c2f84144ba72ca01f6ac68a645a1ac1848f2efd7948d/tomlkit-0.11.2.tar.gz -> tomlkit-0.11.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/tomlkit-0.11.2"