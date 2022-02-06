# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Deprecation Infrastructure"
HOMEPAGE="https://github.com/zopefoundation/zope.deprecation"
SRC_URI="https://files.pythonhosted.org/packages/34/da/46e92d32d545dd067b9436279d84c339e8b16de2ca393d7b892bc1e1e9fd/zope.deprecation-4.4.0.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_install_all() {
	distutils-r1_python_install_all

	find "${ED}" -name '*.pth' -delete || die
}