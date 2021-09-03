# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Provides tag-expression parser for cucumber/behave"
HOMEPAGE="https://github.com/cucumber/tag-expressions-python https://pypi.org/project/cucumber-tag-expressions/"
SRC_URI="https://files.pythonhosted.org/packages/5d/66/3384490ac5f7a1061907b230690eda1a135ce2c3eabbf4ec992ff0fbf398/cucumber-tag-expressions-4.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/cucumber-tag-expressions-4.0.0"