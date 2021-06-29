# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="More routines for operating on iterables, beyond itertools"
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/88/ff/6d485d7362f39880810278bdc906c13300db05485d9c65971dec1142da6a/more-itertools-4.3.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/more-itertools-8 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/more-itertools-4.3.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}