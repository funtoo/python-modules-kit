# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CARGO_OPTIONAL="yes"
CRATES="
Inflector-0.11.4
aliasable-0.1.3
asn1-0.8.7
asn1_derive-0.8.7
autocfg-1.1.0
base64-0.13.0
bitflags-1.3.2
cfg-if-1.0.0
chrono-0.4.19
indoc-0.3.6
indoc-impl-0.3.6
instant-0.1.12
lazy_static-1.4.0
libc-0.2.124
lock_api-0.4.7
num-integer-0.1.44
num-traits-0.2.14
once_cell-1.10.0
ouroboros-0.15.0
ouroboros_macro-0.15.0
parking_lot-0.11.2
parking_lot_core-0.8.5
paste-0.1.18
paste-impl-0.1.18
pem-1.0.2
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro2-1.0.37
pyo3-0.15.2
pyo3-build-config-0.15.2
pyo3-macros-0.15.2
pyo3-macros-backend-0.15.2
quote-1.0.18
redox_syscall-0.2.13
scopeguard-1.1.0
smallvec-1.8.0
stable_deref_trait-1.2.0
syn-1.0.91
unicode-xid-0.2.2
unindent-0.1.8
version_check-0.9.4
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE="https://github.com/pyca/cryptography https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/d7/88/067fcf5fd8db191b9e617bcc0effa1caacfc96acca987724535129aff487/cryptography-37.0.0.tar.gz
$(cargo_crate_uris ${CRATES})
"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	$(python_gen_cond_dep '
	>=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]
	' -3
	)"
RDEPEND="
	python_targets_python2_7? ( dev-python/cryptography-compat )
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )"
BDEPEND="
	!x86? ( >=virtual/rust-1.37.0 )
	x86? (
		cpu_flags_x86_sse2? (
			>=virtual/rust-1.37.0
		)
	)"
IUSE="cpu_flags_x86_sse2 libressl idna python_targets_python2_7"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"

S="${WORKDIR}/cryptography-37.0.0"

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
