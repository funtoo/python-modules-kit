# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/08/4a/137f422423b9c85148183691da65c5c843a209b7fc0c33a5144489366f53/pycountry-23.12.11.tar.gz -> pycountry-23.12.11.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycountry-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pycountry-23.12.11"