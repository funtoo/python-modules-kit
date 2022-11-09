# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/0a/d3/931089ae4924f040b7861e20ab1a5d4899647147c841cf0ac79342a681e8/gpep517-11.tar.gz -> gpep517-11.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/gpep517-11"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
