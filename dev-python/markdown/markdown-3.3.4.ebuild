# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/49/02/37bd82ae255bb4dfef97a4b32d95906187b7a7a74970761fca1360c4ba22/Markdown-3.3.4.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/markdown-compat )
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' pypy3 -3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/Markdown-3.3.4"