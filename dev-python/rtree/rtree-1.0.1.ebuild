# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/Toblerity/rtree https://pypi.org/project/Rtree/"
SRC_URI="https://files.pythonhosted.org/packages/92/af/1d4066fd723c6304028a0296703f8a997f5dadd404645547233a21715311/Rtree-1.0.1.tar.gz -> Rtree-1.0.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.0.1"