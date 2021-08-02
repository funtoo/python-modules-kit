# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.proxy
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Generic Transport Proxies"
HOMEPAGE="https://docs.zope.org/zope.proxy/"
SRC_URI="https://files.pythonhosted.org/packages/63/c4/61fd8fee17b3e54bc32c5d7815114a6c334fd100352fc3c07730e54f95c0/zope.proxy-4.4.0.tar.gz"

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