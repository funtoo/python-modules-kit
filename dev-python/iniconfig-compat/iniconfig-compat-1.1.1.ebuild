# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="brain-dead simple config-ini parsing"
HOMEPAGE=" https://pypi.org/project/iniconfig/"
SRC_URI="https://files.pythonhosted.org/packages/23/a2/97899f6bd0e873fed3a7e67ae8d3a08b21799430fb4da15cfedf10d6e2c2/iniconfig-1.1.1.tar.gz -> iniconfig-1.1.1.tar.gz"

DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/hatch-vcs[${PYTHON_USEDEP}]"
RDEPEND="!<=dev-python/iniconfig-2.0.0 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/iniconfig-1.1.1"

src_prepare() {
	# fix license in pyproject.toml
	sed -i -e 's/license = "MIT"/license = { text = "MIT" }/g' pyproject.toml || die

	distutils-r1_src_prepare
}


post_src_install() {
	rm -rf ${D}/usr/bin
}