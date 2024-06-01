# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/76/57/c389fa68c50590881a75b7883eeb3dc15e9e73a0fdc001cdd45c13290c92/pycountry-24.6.1.tar.gz -> pycountry-24.6.1.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycountry-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pycountry-24.6.1"