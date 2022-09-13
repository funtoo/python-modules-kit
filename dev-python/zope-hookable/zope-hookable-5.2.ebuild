# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1
MY_PN=zope.hookable
MY_P=${MY_PN}-${PV}

DESCRIPTION="Zope Hookable"
HOMEPAGE="https://docs.zope.org/zope.hookable/"
SRC_URI="https://files.pythonhosted.org/packages/40/d5/5ed6b312a3a1d66d8e740af301b1cbbf50860d31bc430bd15163de4a50cf/zope.hookable-5.2.tar.gz -> zope.hookable-5.2.tar.gz"

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