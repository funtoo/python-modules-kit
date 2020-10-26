# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy{,3} )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1 flag-o-matic

VEC_P=cryptography_vectors-${PV}
DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="https://github.com/pyca/cryptography/ https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/1c/15/aceb9a2535c9fa805316b49e42fde0a83d1a0492b4e3608a4a5dc9b04b46/cryptography-3.2.tar.gz
	test? ( mirror://pypi/c/cryptography_vectors/${VEC_P}.tar.gz )"

LICENSE="|| ( Apache-2.0 BSD )"
SLOT="0"
KEYWORDS="*"
IUSE="libressl idna test"
RESTRICT="!test? ( test )"

# the openssl 1.0.2l-r1 needs to be updated again :(
# It'd theb be able to go into the || section again
#=dev-libs/openssl-1.0.2l-r1:0
# the following is the original section, disallowing bindist entirely
#!libressl? ( >=dev-libs/openssl-1.0.2:0=[-bindist(-)] )
RDEPEND="
	!libressl? (
		dev-libs/openssl:0= (
			|| (
				dev-libs/openssl:0[-bindist(-)]
				>=dev-libs/openssl-1.0.2o-r6:0
			)
		)
	)
	libressl? ( dev-libs/libressl:0= )
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '>=dev-python/cffi-1.8:=[${PYTHON_USEDEP}]' 'python*')
	$(python_gen_cond_dep '!~dev-python/cffi-1.11.3[${PYTHON_USEDEP}]' 'python*')
	"
DEPEND="${RDEPEND}
	>=dev-python/setuptools-1.0[${PYTHON_USEDEP}]
	test? (
		dev-python/pretend[${PYTHON_USEDEP}]
		dev-python/iso8601[${PYTHON_USEDEP}]
		dev-python/pytz[${PYTHON_USEDEP}]
		>=dev-python/hypothesis-1.11.4[${PYTHON_USEDEP}]
		!~dev-python/hypothesis-3.79.2[${PYTHON_USEDEP}]
		dev-python/pyasn1-modules[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

DOCS=( AUTHORS.rst CONTRIBUTING.rst README.rst )

python_configure_all() {
	append-cflags $(test-flags-CC -pthread)
}

python_test() {
	local -x PYTHONPATH=${PYTHONPATH}:${WORKDIR}/${VEC_P}
	pytest -vv || die "Tests fail with ${EPYTHON}"
}