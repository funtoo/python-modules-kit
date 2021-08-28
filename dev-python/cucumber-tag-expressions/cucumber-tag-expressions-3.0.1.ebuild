# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Provides tag-expression parser for cucumber/behave"
HOMEPAGE="https://github.com/cucumber/tag-expressions-python https://pypi.org/project/cucumber-tag-expressions/"
SRC_URI="https://files.pythonhosted.org/packages/f4/db/b482f5c1969017f2a4a0c065111809c3696501e76f16cc56a49710eaf034/cucumber-tag-expressions-3.0.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/cucumber-tag-expressions-3.0.1"