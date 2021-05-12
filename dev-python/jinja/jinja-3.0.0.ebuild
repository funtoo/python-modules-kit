# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="threads(+)"

inherit eutils distutils-r1

DESCRIPTION="A full-featured template engine for Python"
HOMEPAGE="http://jinja.pocoo.org/ https://pypi.org/project/Jinja2/"

# pypi tarball is missing tests
SRC_URI="https://files.pythonhosted.org/packages/7a/0c/23cbcf515b5394e9f59a3e6629f26e1142b92d474ee0725a26aa5a3bcf76/Jinja2-3.0.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="doc examples test"
RESTRICT="!test? ( test )"

RDEPEND="
	dev-python/markupsafe[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	!dev-python/jinja:compat"
DEPEND="${RDEPEND}
	doc? ( dev-python/sphinx[${PYTHON_USEDEP}] )
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

S="${WORKDIR}/Jinja2-${PV}"

# XXX: handle Babel better?

wrap_opts() {
	local mydistutilsargs=()

	if [[ ${EPYTHON} == python* ]]; then
		mydistutilargs+=( --with-debugsupport )
	fi

	"${@}"
}

python_compile() {
	wrap_opts distutils-r1_python_compile
}

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	py.test || die
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )
	if use examples ; then
		docinto examples
		dodoc -r examples/.
	fi

	distutils-r1_python_install_all

	insinto /usr/share/vim/vimfiles/syntax
	doins ext/Vim/*
}

pkg_postinst() {
	if ! has_version dev-python/Babel; then
		elog "For i18n support, please emerge dev-python/Babel."
	fi
}