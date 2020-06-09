# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/ac/df/0ae25a9fd5bb528fe3c65af7143708160aa3b47970d5272003a1ad5c03c6/Markdown-3.1.1.tar.gz -> Markdown-3.1.1.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' python3_{6,7} pypy3)
 !<dev-python/markdown-3.2"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/markdown-${PV}"


S="${WORKDIR}/Markdown-${PV}"

post_src_install() {
	# We should start to do this automatically:
	[ "$PV" == "3.1.1" ] && rm -rf ${D}/usr/bin
}
