# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1 bash-completion-r1

MY_PN="Pygments"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Pygments is a syntax highlighting package written in Python"
HOMEPAGE="https://pygments.org/ https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/03/98/c7468f5a1b434cb15b1d240c5f3bd015962af8a822e89e7f10ee11e68928/Pygments-2.15.0.tar.gz -> Pygments-2.15.0.tar.gz"
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