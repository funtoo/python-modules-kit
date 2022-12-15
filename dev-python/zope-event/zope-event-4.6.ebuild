# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Event publishing / dispatch, used by Zope Component Architecture"
HOMEPAGE="https://github.com/zopefoundation/zope.event http://docs.zope.org/zope.event/"
SRC_URI="https://files.pythonhosted.org/packages/42/49/ba8610674cad200da2f9c87b5f52fdcf18b02dd743a8a1e90726803cc42f/zope.event-4.6.tar.gz -> zope.event-4.6.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

distutils_enable_tests nose

S="${WORKDIR}/${MY_P}"

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}