# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://Python-Markdown.github.io/ https://pypi.org/project/Markdown/"
SRC_URI="https://files.pythonhosted.org/packages/d6/58/79df20de6e67a83f0d0bbfe6c19bb82adf68cdf362885257eb01099f930a/Markdown-3.3.7.tar.gz
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
S="${WORKDIR}/Markdown-3.3.7"