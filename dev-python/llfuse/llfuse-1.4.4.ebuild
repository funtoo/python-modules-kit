# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python bindings for the low level FUSE API"
HOMEPAGE="https://github.com/python-llfuse/python-llfuse/ https://pypi.org/project/llfuse/"
SRC_URI="https://files.pythonhosted.org/packages/3e/c3/d74bb2dbfc2eddae86b209f134f8ef655db34c7f5104c1fccd4df5a05da3/llfuse-1.4.4.tar.gz -> llfuse-1.4.4.tar.gz
"

DEPEND="
	sys-apps/attr
	virtual/pkgconfig
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="
	sys-fs/fuse
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="doc examples test"
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/llfuse-1.4.4"

python_test() {
	py.test -v || die "Tests failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/html/. )
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
