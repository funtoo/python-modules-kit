# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Extension to sphinx to create links to issue trackers"
HOMEPAGE="http://sphinxcontrib-issuetracker.readthedocs.org/"
SRC_URI="https://files.pythonhosted.org/packages/bd/dc/7802f5cb801e9af00372dd95dc58de6f3b3821082b33acae1b159789f939/sphinxcontrib-issuetracker-0.11.tar.gz -> sphinxcontrib-issuetracker-0.11.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"

RDEPEND="
	dev-python/namespace-sphinxcontrib[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

python_prepare_all() {
	# test requires network access (bug #425694)
	rm tests/test_builtin_trackers.py || die

	# Tests from tests/test_stylesheet.py require dev-python/PyQt4[X,webkit]
	# and virtualx.eclass.
	rm tests/test_stylesheet.py || die

	# Avoid redundant objects.inv from downloading, sed more lightweight
	if use doc; then
		sed -e "s:^intersphinx_mapping:#intersphinx_mapping:" \
			-e "s:^                       'sphinx':#:" \
			-i doc/conf.py || die
	fi

	distutils-r1_python_prepare_all
}

python_compile_all() {
	if use doc; then
		emake -C doc html
		HTML_DOCS=( doc/_build/html/. )
	fi
}

python_test() {
	py.test || die
}

python_install_all() {
	distutils-r1_python_install_all
	find "${ED}" -name '*.pth' -delete || die
}