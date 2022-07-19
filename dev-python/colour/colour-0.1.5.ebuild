# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/vaab/colour https://pypi.org/project/colour/"
SRC_URI="https://files.pythonhosted.org/packages/a0/d4/5911a7618acddc3f594ddf144ecd8a03c29074a540f4494670ad8f153efe/colour-0.1.5.tar.gz -> colour-0.1.5.tar.gz
"

DEPEND=""
RDEPEND="dev-python/d2to1[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/colour-0.1.5"