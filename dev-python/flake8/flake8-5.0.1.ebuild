# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pycqa/flake8 https://pypi.org/project/flake8/"
SRC_URI="https://files.pythonhosted.org/packages/dd/94/b407f9f904fa387522ed8ba7890bcd1af67b94e2988744159c263e516cf8/flake8-5.0.1.tar.gz -> flake8-5.0.1.tar.gz
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
S="${WORKDIR}/flake8-5.0.1"

src_prepare() {
	# remove version-limited dep
	sed -i -e '/importlib-metadata/d' setup.cfg || die
	distutils-r1_src_prepare
}
