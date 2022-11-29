# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.location
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Hookable"
HOMEPAGE="https://docs.zope.org/zope.location/"
SRC_URI="https://files.pythonhosted.org/packages/95/b5/433d8cd402e82320063192c3413c44abb1d64a8162a13abce16f09c91b9e/zope.location-4.3.tar.gz -> zope.location-4.3.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]
dev-python/zope-component[${PYTHON_USEDEP}]
dev-python/zope-interface[${PYTHON_USEDEP}]
dev-python/zope-proxy[${PYTHON_USEDEP}]
dev-python/zope-schema[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}