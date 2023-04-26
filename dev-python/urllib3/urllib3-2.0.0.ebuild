# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="ssl(+)"

inherit distutils-r1

DESCRIPTION="HTTP library with thread-safe connection pooling, file post, and more"
HOMEPAGE="https://github.com/shazow/urllib3"
SRC_URI="https://files.pythonhosted.org/packages/aa/52/078c46565a4b4983e15d862cb7461e5c63a2e7b3c8436e8622a601120ea0/urllib3-2.0.0.tar.gz -> urllib3-2.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"
#RESTRICT="test"

RDEPEND="
	>=dev-python/PySocks-1.5.6[${PYTHON_USEDEP}]
	!~dev-python/PySocks-1.5.7[${PYTHON_USEDEP}]
	<dev-python/PySocks-2.0[${PYTHON_USEDEP}]
	dev-python/certifi[${PYTHON_USEDEP}]
	>=dev-python/cryptography-1.3.4[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}]
	>=dev-python/idna-2.0.0[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		${RDEPEND}
		>=www-servers/tornado-4.2.1[$(python_gen_usedep 'python*')]
		dev-python/pytest[${PYTHON_USEDEP}]
	)
	doc? (
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}]
	)
"

# Testsuite written requiring mock to be installed under all Cpythons

python_prepare_all() {
	# skip appengine tests
	rm -r test/appengine || die

	distutils-r1_python_prepare_all
}

python_compile_all() {
	use doc && emake -C docs SPHINXOPTS= html
}

python_test() {
	# FIXME: get tornado ported
	if [[ ${EPYTHON} == python* ]]; then
		py.test -v || die "Tests fail with ${EPYTHON}"
	fi
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )
	distutils-r1_python_install_all
}