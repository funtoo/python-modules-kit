# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/Textualize/rich https://pypi.org/project/rich/"
SRC_URI="https://files.pythonhosted.org/packages/31/3b/2360352760b436f822258396e66ffb6d42585518a9cde2f93f142e64c5eb/rich-13.3.4.tar.gz -> rich-13.3.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/rich-13.3.4"