# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A wrapper around PyFlakes, pep8 & mccabe"
HOMEPAGE="https://gitlab.com/pycqa/flake8 https://pypi.org/project/flake8/
"
SRC_URI="https://files.pythonhosted.org/packages/40/3c/3464b567aa367b221fa610bbbcce8015bf953977d21e52f2d711b526fb48/flake8-7.0.0.tar.gz -> flake8-7.0.0.tar.gz"

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
S="${WORKDIR}/flake8-7.0.0"

src_prepare() {
	# remove version-limited dep
	sed -i -e '/importlib-metadata/d' setup.cfg || die
	distutils-r1_src_prepare
}
