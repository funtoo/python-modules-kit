# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="A microframework based on Werkzeug, Jinja2 and good intentions"
HOMEPAGE="https://github.com/pallets/flask/"
MY_PN="Flask"
MY_P="${MY_PN}-${PV}"
SRC_URI="https://files.pythonhosted.org/packages/4d/00/ef81c18da32fdfcde6381c315f4b11597fb6691180a330418848efee0ae7/Flask-2.3.2.tar.gz -> Flask-2.3.2.tar.gz"
KEYWORDS="*"
S="${WORKDIR}/${MY_P}"

LICENSE="BSD"
SLOT="0"
IUSE="examples test"
RESTRICT="!test? ( test )"

RDEPEND="dev-python/click[${PYTHON_USEDEP}]
	dev-python/blinker[${PYTHON_USEDEP}]
	dev-python/itsdangerous[${PYTHON_USEDEP}]
	>=dev-python/jinja-2.10[${PYTHON_USEDEP}]
	>=dev-python/werkzeug-0.15[${PYTHON_USEDEP}]"
DEPEND="
	test? (
		${RDEPEND}
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

distutils_enable_sphinx docs

python_test() {
	PYTHONPATH=${S}/examples/flaskr:${S}/examples/minitwit${PYTHONPATH:+:${PYTHONPATH}} \
		pytest -vv -p no:httpbin || die "Testing failed with ${EPYTHON}"
}

python_install_all() {
	use examples && dodoc -r examples

	distutils-r1_python_install_all
}