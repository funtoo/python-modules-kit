# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Provides tag-expression parser for cucumber/behave"
HOMEPAGE="https://github.com/cucumber/tag-expressions-python https://pypi.org/project/cucumber-tag-expressions/"
SRC_URI="https://files.pythonhosted.org/packages/44/1f/7c68becf4e2be82176595035f8677ca7062af22479c52ee16d2d9c333324/cucumber-tag-expressions-4.0.2.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/cucumber-tag-expressions-4.0.2"