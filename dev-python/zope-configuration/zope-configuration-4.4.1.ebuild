# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.configuration
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Configuration Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.configuration
	https://docs.zope.org/zope.configuration/"
SRC_URI="https://files.pythonhosted.org/packages/d5/ef/f9c1dc598189c9a0ca96b392160f68bcbd63428d0f8628588f9a1046143c/zope.configuration-4.4.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="dev-python/zope-i18nmessageid[${PYTHON_USEDEP}]
	dev-python/zope-interface[${PYTHON_USEDEP}]
	>=dev-python/zope-schema-4.9[${PYTHON_USEDEP}]"

S=${WORKDIR}/${MY_P}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}