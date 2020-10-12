# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="http client/server for asyncio"
HOMEPAGE="https://pypi.org/project/aiohttp/"
SRC_URI="https://files.pythonhosted.org/packages/9d/6c/429faa2d2f73973189ca0cfe141ff703417a5eebe18d78e6b25b70db0a34/aiohttp-3.6.3.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="doc test"
RESTRICT="!test? ( test )"

CDEPEND="
	>=dev-python/async_timeout-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/attrs-17.3.0[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	>=dev-python/multidict-4.5.0[${PYTHON_USEDEP}]
	>=dev-python/yarl-1.0[${PYTHON_USEDEP}]
	dev-python/idna-ssl[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' \
		python3_{5,6})
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/cython[${PYTHON_USEDEP}]
	doc? (
		>=dev-python/alabaster-0.6.2[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-asyncio[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-blockdiag[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-newsfeed[${PYTHON_USEDEP}]
		dev-python/sphinxcontrib-spelling[${PYTHON_USEDEP}]
		dev-python/sphinx[${PYTHON_USEDEP}]
		dev-python/sphinx-aiohttp-theme[${PYTHON_USEDEP}]
	)
	test? (
		${CDEPEND}
		dev-python/async_generator[${PYTHON_USEDEP}]
		dev-python/brotlipy[${PYTHON_USEDEP}]
		>=dev-python/pytest-3.4.0[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
		dev-python/pytest-timeout[${PYTHON_USEDEP}]
		dev-python/trustme[${PYTHON_USEDEP}]
		www-servers/gunicorn[${PYTHON_USEDEP}]
	)
"
RDEPEND="${CDEPEND}"

DOCS=( CHANGES.rst CONTRIBUTORS.txt README.rst )

python_compile_all() {
	use doc && emake -C docs html
}

python_test() {
	pytest -vv || die "Tests fail with ${EPYTHON}"
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/_build/html/. )

	distutils-r1_python_install_all
}