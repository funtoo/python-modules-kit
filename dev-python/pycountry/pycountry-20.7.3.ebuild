# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/76/73/6f1a412f14f68c273feea29a6ea9b9f1e268177d32e0e69ad6790d306312/pycountry-20.7.3.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pycountry-compat )
	dev-python/setuptools[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pycountry-20.7.3"