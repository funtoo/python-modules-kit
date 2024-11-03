# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="None https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/0d/05/07b55d1fa21ac18c3a8c79f764e2514e6f6a9698f1be44994f5adf0d29db/cryptography-43.0.3.tar.gz -> cryptography-43.0.3.tar.gz
https://direct.funtoo.org/36/2a/ba/362abad5d50142239f5af8a8545ebda8a360251850700341e7ad09037507b097b155cd41f2691ea43eff90936f027c49a21b7a88cbd2eb08a0c3f064e5983f9c -> cryptography-43.0.3-funtoo-crates-bundle-6ef75ca705fa17a0fc09c1b0e1e333b419cd25c55a1f819e758f6ba8fd350607e15958362584674369f39194fb2b78a921279d626acb0780e95cf3e25b81e1cd.tar.gz

$(cargo_crate_uris ${CRATES})"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	!x86? ( >=virtual/rust-1.37.0 )
	x86? (
		cpu_flags_x86_sse2? (
			>=virtual/rust-1.37.0
		)
	)
	$(python_gen_cond_dep '>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}] >=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]' -3)"
RDEPEND="
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )"
IUSE="cpu_flags_x86_sse2 idna libressl"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"
S="${WORKDIR}/cryptography-43.0.3"

pkg_setup() {
	use x86 && ! use cpu_flags_x86_sse2 && export CRYPTOGRAPHY_DONT_BUILD_RUST=1
}
src_unpack() {
	if [[ ${CRYPTOGRAPHY_DONT_BUILD_RUST} ]] || [ "$PN"  == 'cryptography-compat' ] ; then
		default
	else
		cargo_src_unpack
	fi
}
