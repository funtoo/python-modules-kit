# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.proxy
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Generic Transport Proxies"
HOMEPAGE="https://docs.zope.org/zope.proxy/"
SRC_URI="https://files.pythonhosted.org/packages/ab/37/26899cb231ecfa04822a17a669eac6df7ef0c2a86e2b78001db0cd3edd46/zope.proxy-4.3.5.tar.gz -> zope.proxy-4.3.5.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}