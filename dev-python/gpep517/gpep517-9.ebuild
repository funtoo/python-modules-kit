# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/2c/ba/a652ee461583af8fd24ff7affc710cc30587b2e2fd089fd718d6ce0ae461/gpep517-9.tar.gz -> gpep517-9.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/gpep517-9"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
