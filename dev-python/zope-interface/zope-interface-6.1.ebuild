# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1 flag-o-matic

MY_PN=${PN/-/.}
MY_P=${MY_PN}-${PV}

DESCRIPTION="Interfaces for Python"
HOMEPAGE="https://pypi.org/project/zope.interface/ https://github.com/zopefoundation/zope.interface"
SRC_URI="https://files.pythonhosted.org/packages/87/03/6b85c1df2dca1b9acca38b423d1e226d8ffdf30ebd78bcb398c511de8b54/zope.interface-6.1.tar.gz -> zope.interface-6.1.tar.gz"

LICENSE="ZPL"
SLOT="0"
KEYWORDS="*"

RDEPEND="dev-python/namespace-zope[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		dev-python/zope-event[${PYTHON_USEDEP}]
		dev-python/zope-testing[${PYTHON_USEDEP}]
	)
"

src_prepare() {
	default
	sed -i -e '/coverage/d' ${S}/setup.py || die
}

S="${WORKDIR}/${MY_P}"

distutils_enable_tests setup.py

python_compile() {
	if ! python_is_python3; then
		local CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}"
		append-flags -fno-strict-aliasing
	fi

	distutils-r1_python_compile
}

python_install_all() {
	distutils-r1_python_install_all

	# remove .pth files since dev-python/namespace-zope handles the ns
	find "${D}" -name '*.pth' -delete || die
}