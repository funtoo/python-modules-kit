# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/33/b1/07f96b8adb865333246cc102cbab7deedc70963818d696375321e172c927/pycountry-23.12.7.tar.gz -> pycountry-23.12.7.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycountry-compat )"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pycountry-23.12.7"