# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://foss.heptapod.net/openpyxl/et_xmlfile https://pypi.org/project/et-xmlfile/"
SRC_URI="https://files.pythonhosted.org/packages/3d/5d/0413a31d184a20c763ad741cc7852a659bf15094c24840c5bdd1754765cd/et_xmlfile-1.1.0.tar.gz -> et_xmlfile-1.1.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/lxml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/et_xmlfile-1.1.0"