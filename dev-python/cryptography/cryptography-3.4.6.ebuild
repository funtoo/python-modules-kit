# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives
"
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/fa/2d/2154d8cb773064570f48ec0b60258a4522490fcb115a6c7c9423482ca993/cryptography-3.4.6.tar.gz"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )"
RDEPEND="
	python_targets_python2_7? ( dev-python/cryptography-compat )
	$(python_gen_cond_dep '
	dev-python/setuptools-rust[${PYTHON_USEDEP}]
	' -3
	)
	dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )"
IUSE="libressl idna python_targets_python2_7"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"

S="${WORKDIR}/cryptography-${PV}"

src_prepare() {
	default
	export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}
