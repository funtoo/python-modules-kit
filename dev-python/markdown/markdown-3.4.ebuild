# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://Python-Markdown.github.io/ https://pypi.org/project/Markdown/"
SRC_URI="https://files.pythonhosted.org/packages/83/9b/fec56574eb7cedf6a85ad5092403784177f491247f54baea5411cd1b093a/Markdown-3.4.tar.gz
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
S="${WORKDIR}/Markdown-3.4"