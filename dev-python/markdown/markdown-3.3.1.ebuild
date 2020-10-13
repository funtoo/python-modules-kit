# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/cf/76/688d96f8e1d5e2be2ccf66bb4b2e84e0f38b4748c13d5ff756ee0ae352fd/Markdown-3.3.1.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' python3_{6,7} pypy3)
 python_targets_python2_7? ( dev-python/markdown-compat ) "
IUSE=" python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/markdown-${PV}"


S="${WORKDIR}/Markdown-${PV}"

post_src_install() {
	# We should start to do this automatically:
	[ "$PV" == "3.1.1" ] && rm -rf ${D}/usr/bin
}
