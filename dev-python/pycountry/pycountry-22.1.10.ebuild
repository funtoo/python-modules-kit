# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/03/c4/2db520ae518156a88b419b2865d4fdc85fe78573948358f79dbaf0cf2b30/pycountry-22.1.10.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycountry-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pycountry-22.1.10"