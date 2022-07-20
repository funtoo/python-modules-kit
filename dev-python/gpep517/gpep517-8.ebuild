# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/67/03/264f13a85c72d83ceab043b6e0dd324ccfbf1038d5174ffe560a9a8a45e0/gpep517-8.tar.gz -> gpep517-8.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/gpep517-8"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
