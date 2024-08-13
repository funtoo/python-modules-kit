# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Retry code until it succeeds"
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/9e/ff/65d44f70e9a5273b6185ccbff194bb649e4fa6bd328113feda964f277f2d/tenacity-7.0.0.tar.gz -> tenacity-7.0.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/tenacity-8 "
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/tenacity-7.0.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}