# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Internationalized Domain Names in Applications (IDNA)"
HOMEPAGE="None https://pypi.org/project/idna/"
SRC_URI="https://files.pythonhosted.org/packages/ea/b7/e0e3c1c467636186c39925827be42f16fee389dc404ac29e930e9136be70/idna-2.10.tar.gz -> idna-2.10.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/idna-3 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/idna-2.10"

post_src_install() {
	rm -rf ${D}/usr/bin
}