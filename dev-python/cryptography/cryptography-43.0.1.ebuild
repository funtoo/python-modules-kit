# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="maturin"
CRATES="
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="None https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/de/ba/0664727028b37e249e73879348cc46d45c5c1a2a2e81e8166462953c5755/cryptography-43.0.1.tar.gz -> cryptography-43.0.1.tar.gz
https://direct.funtoo.org/f4/17/b1/f417b1126098789a12439eac10f3fc0cc1c6e11c3e85a904fd98e922952920b7558b278453763a0490179ae70d9b6268dcc87ff751e20f9fc30af56ed853ceca -> cryptography-43.0.1-funtoo-crates-bundle-5e20d676cb5156256e13a37de8c621b0f0474751a999cc1a214a26fa6619987ead4e292be71215dcedffe73448f8356d162dd89800298460607341d6b7a3cd0f.tar.gz

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
S="${WORKDIR}/cryptography-43.0.1"

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
