# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="no"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/gpep517/"
SRC_URI="https://files.pythonhosted.org/packages/fe/ad/157e3791bd9230d6df2b0b9dfde5c3fd50962925f3778c24ba5afba01544/gpep517-7.tar.gz -> gpep517-7.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/installer[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/gpep517-7"

python_install() {
	python_domodule gpep517
	python_newscript - gpep517 <<-EOF
		#!${EPREFIX}/usr/bin/python
		import sys
		from gpep517.__main__ import main
		sys.exit(main())
	EOF
}
