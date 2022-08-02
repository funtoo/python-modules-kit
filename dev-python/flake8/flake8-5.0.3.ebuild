# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pycqa/flake8 https://pypi.org/project/flake8/"
SRC_URI="https://files.pythonhosted.org/packages/30/8a/dbc2e61f779a60252677f36833d040813f492bb0ca04dfe8aa480c2b39d4/flake8-5.0.3.tar.gz -> flake8-5.0.3.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/flake8-compat )
	dev-python/pyflakes[${PYTHON_USEDEP}]
	dev-python/pycodestyle[${PYTHON_USEDEP}]"
PDEPEND="dev-python/mccabe[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/flake8-5.0.3"

src_prepare() {
	# remove version-limited dep
	sed -i -e '/importlib-metadata/d' setup.cfg || die
	distutils-r1_src_prepare
}
