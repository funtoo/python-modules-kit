# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/Toblerity/rtree https://pypi.org/project/Rtree/"
SRC_URI="https://files.pythonhosted.org/packages/0c/fd/06d60621622952ba11155416128ef62f1690ae7ca710a10a49961786c05a/Rtree-1.0.0.tar.gz -> Rtree-1.0.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/Rtree-1.0.0"