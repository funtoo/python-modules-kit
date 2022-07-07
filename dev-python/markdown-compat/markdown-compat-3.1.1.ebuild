# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://Python-Markdown.github.io/ https://pypi.org/project/Markdown/"
SRC_URI="https://files.pythonhosted.org/packages/ac/df/0ae25a9fd5bb528fe3c65af7143708160aa3b47970d5272003a1ad5c03c6/Markdown-3.1.1.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/markdown-3.2 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/Markdown-3.1.1"

post_src_install() {
	rm -rf ${D}/usr/bin
}