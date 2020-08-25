# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/44/30/cb4555416609a8f75525e34cbacfc721aa5b0044809968b2cf553fd879c7/Markdown-3.2.2.tar.gz"

DEPEND=""
RDEPEND="$(python_gen_cond_dep 'dev-python/importlib_metadata[${PYTHON_USEDEP}]' python3_{6,7} pypy3)
 python_targets_python2_7? ( dev-python/markdown-compat ) "
IUSE=" python_targets_python2_7 python_single_target_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/markdown-${PV}"


S="${WORKDIR}/Markdown-${PV}"

post_src_install() {
	# We should start to do this automatically:
	[ "$PV" == "3.1.1" ] && rm -rf ${D}/usr/bin
}
