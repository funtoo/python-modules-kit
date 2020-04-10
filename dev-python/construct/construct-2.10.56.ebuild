# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="A powerful declarative parser for binary data"
HOMEPAGE="https://construct.readthedocs.io/en/latest/ https://pypi.org/project/construct/"
SRC_URI="https://files.pythonhosted.org/packages/00/e0/71e41b817220333c7c511c3f78d988d69f9b03b5cca2f251a898ad3567a3/construct-2.10.56.tar.gz -> construct-2.10.56.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"
RESTRICT="test"

DEPEND="test? (
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
		$(python_gen_cond_dep 'dev-python/scimath[${PYTHON_USEDEP}]' 'python2_7')
	)"

python_test() {
	pytest -vv || die "Tests failed under ${EPYTHON}"
}

pkg_postinst() {
	ewarn "Version 2.9.x has significant API and implementation changes from"
	ewarn "previous 2.8.x releases. Please read the documentation at"
	ewarn "https://construct.readthedocs.io/en/latest/transition29.html"
	ewarn "for more info."
}