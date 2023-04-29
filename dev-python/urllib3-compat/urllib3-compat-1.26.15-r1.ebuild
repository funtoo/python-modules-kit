# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/urllib3/"
SRC_URI="https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz -> urllib3-1.26.15.tar.gz
"

DEPEND=""
RDEPEND="!~dev-python/PySocks-1.5.7
!=dev-python/urllib3-1.26.15
 
	>=app-arch/brotli-1.0.9"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/urllib3-1.26.15"

post_src_install() {
	rm -rf ${D}/usr/bin
}