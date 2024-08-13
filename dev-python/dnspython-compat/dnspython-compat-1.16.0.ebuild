# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="DNS toolkit"
HOMEPAGE=" https://pypi.org/project/dnspython/"
SRC_URI="https://files.pythonhosted.org/packages/ec/c5/14bcd63cb6d06092a004793399ec395405edf97c2301dfdc146dfbd5beed/dnspython-1.16.0.zip -> dnspython-1.16.0.zip
"

DEPEND="
	dev-python/idna[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/ecdsa[${PYTHON_USEDEP}] dev-python/pycryptodome[${PYTHON_USEDEP}]' -2)"
RDEPEND="!<=dev-python/dnspython-2.2.1 
	${DEPEND}"
IUSE=""
SLOT="0"
LICENSE="ISC"
KEYWORDS="*"
S="${WORKDIR}/dnspython-1.16.0"

src_prepare() {
	sed -i -e 's|^license =.*|license = {text = "ISC"}|g' pyproject.toml
	distutils-r1_src_prepare
}


post_src_install() {
	rm -rf ${D}/usr/bin
}