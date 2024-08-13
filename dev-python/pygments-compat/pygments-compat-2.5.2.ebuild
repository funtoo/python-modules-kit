# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE="None https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/cb/9f/27d4844ac5bf158a33900dbad7985951e2910397998e85712da03ce125f0/Pygments-2.5.2.tar.gz -> Pygments-2.5.2.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pygments-2.17.0-r1 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pygments-2.5.2"

post_src_install() {
	rm -rf ${D}/usr/bin
}