# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Python implementation of the markdown markup language"
HOMEPAGE="https://python-markdown.github.io/
https://pypi.org/project/Markdown/
https://github.com/Python-Markdown/markdown
"
SRC_URI="https://files.pythonhosted.org/packages/e8/62/6137b2d0b5d69e80004373fac8e84735c975b4a63d4bcab237012e6b486e/Markdown-3.3.5.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/markdown-compat )
	$(python_gen_cond_dep '
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	' -3 pypy3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/Markdown-3.3.5"