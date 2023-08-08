# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1 bash-completion-r1

MY_PN="Pygments"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Pygments is a syntax highlighting package written in Python"
HOMEPAGE="https://pygments.org/ https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/d6/f7/4d461ddf9c2bcd6a4d7b2b139267ca32a69439387cc1f02a924ff8883825/Pygments-2.16.1.tar.gz -> Pygments-2.16.1.tar.gz"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test python_targets_python2_7"
RESTRICT="!test? ( test )"

DEPEND="
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		virtual/ttf-fonts
	)"
RDEPEND="python_targets_python2_7? ( dev-python/pygments-compat[python_targets_python2_7] )"

distutils_enable_sphinx doc

python_test() {
	cp -r -l tests "${BUILD_DIR}"/ || die
	pytest -vv "${BUILD_DIR}"/tests || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	distutils-r1_python_install_all
	newbashcomp external/pygments.bashcomp pygmentize
}