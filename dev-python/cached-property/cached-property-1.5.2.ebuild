# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A decorator for caching properties in classes."
HOMEPAGE="https://github.com/pydanny/cached-property https://pypi.org/project/cached-property/"
SRC_URI="https://files.pythonhosted.org/packages/61/2c/d21c1c23c2895c091fa7a91a54b6872098fea913526932d21902088a7c41/cached-property-1.5.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/cached-property-1.5.2"