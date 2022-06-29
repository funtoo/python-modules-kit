# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Distro - an OS platform information API"
HOMEPAGE="https://github.com/python-distro/distro https://pypi.org/project/distro/"
SRC_URI="https://files.pythonhosted.org/packages/b5/7e/ddfbd640ac9a82e60718558a3de7d5988a7d4648385cf00318f60a8b073a/distro-1.7.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/distro-1.7.0"