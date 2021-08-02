# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="An implementation of JSON-Schema validation for Python"
HOMEPAGE="https://pypi.org/project/jsonschema/ https://github.com/Julian/jsonschema"
SRC_URI="https://files.pythonhosted.org/packages/69/11/a69e2a3c01b324a77d3a7c0570faa372e8448b666300c4117a516f8b1212/jsonschema-3.2.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE="test"

BDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/pyrsistent[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
		dev-python/importlib_metadata[${PYTHON_USEDEP}]
		' python{2_7,3_{5,6,7}} pypy{,3})
	$(python_gen_cond_dep \
		'dev-python/functools32[${PYTHON_USEDEP}]' -2)
	test? ( dev-python/twisted[${PYTHON_USEDEP}] )
"

RDEPEND="${BDEPEND}
	dev-python/idna[${PYTHON_USEDEP}]
	>=dev-python/jsonpointer-1.13[${PYTHON_USEDEP}]
	dev-python/rfc3987[${PYTHON_USEDEP}]
	dev-python/strict-rfc3339[${PYTHON_USEDEP}]
	dev-python/webcolors[${PYTHON_USEDEP}]
	dev-python/rfc3986-validator[${PYTHON_USEDEP}]
	dev-python/rfc3339-validator[${PYTHON_USEDEP}]
"

RESTRICT="!test? ( test )"

distutils_enable_tests unittest

python_prepare_all() {
	# avoid a setuptools_scm dependency
	sed -i "s:use_scm_version=True:version='${PV}',name='${PN//-/.}':" setup.py || die
	sed -r -i "s:setuptools_scm[[:space:]]*([><=]{1,2}[[:space:]]*[0-9.a-zA-Z]+|)[[:space:]]*::" \
		setup.cfg || die

	distutils-r1_python_prepare_all
}