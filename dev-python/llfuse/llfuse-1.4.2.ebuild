# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python-llfuse/python-llfuse/ https://pypi.org/project/llfuse/"
SRC_URI="https://files.pythonhosted.org/packages/23/98/896217af308e3deafae4f6370748d25fa500165f23d4586c3c993ff4e4ed/llfuse-1.4.2.tar.gz -> llfuse-1.4.2.tar.gz
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
S="${WORKDIR}/llfuse-1.4.2"

python_test() {
	py.test -v || die "Tests failed under ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( doc/html/. )
	use examples && dodoc -r examples
	distutils-r1_python_install_all
}
