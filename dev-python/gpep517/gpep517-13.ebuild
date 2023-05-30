# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION="Python package builder and installer for non-pip-centric world"
HOMEPAGE=" https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/20/2e/36e46173a288c1c40853ffdb712c67e0e022df0e1ce50b7b1b50066b74d4/gpep517-13.tar.gz -> gpep517-13.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/gpep517-13"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
