# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1 eutils

MY_PN="Mako"
MY_P=${MY_PN}-${PV}

DESCRIPTION="A Python templating language"
HOMEPAGE="http://www.makotemplates.org/ https://pypi.org/project/Mako/"
SRC_URI="https://files.pythonhosted.org/packages/50/ec/1d687348f0954bda388bfd1330c158ba8d7dea4044fc160e74e080babdb9/Mako-1.2.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"

RDEPEND=">=dev-python/markupsafe-0.9.2[${PYTHON_USEDEP}]"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		$(python_gen_cond_dep 'dev-python/mock[${PYTHON_USEDEP}]' pypy python2_7)
		dev-python/pytest[${PYTHON_USEDEP}]
	)
"

S="${WORKDIR}/${MY_P}"

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	rm -r doc/build || die

	use doc && local HTML_DOCS=( doc/. )
	distutils-r1_python_install_all
}

pkg_postinst() {
	elog "Optional dependencies:"
	optfeature "caching support" dev-python/beaker
}