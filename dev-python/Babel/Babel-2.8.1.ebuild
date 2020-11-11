# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
PYTHON_REQ_USE="threads(+)"
DISTUTILS_USE_SETUPTOOLS=rdepend

inherit distutils-r1

DESCRIPTION="Collection of tools for internationalizing Python applications"
HOMEPAGE="http://babel.pocoo.org/ https://pypi.org/project/Babel/"
SRC_URI="https://files.pythonhosted.org/packages/13/1e/17cbd78f3b0b0115c6fa10e55c0bb5d3dd2c0d482d2114339e9d33c171a1/Babel-2.8.1.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"
DEPEND="${DEPEND}
	test? ( dev-python/freezegun[${PYTHON_USEDEP}] )"

distutils_enable_sphinx docs
distutils_enable_tests pytest