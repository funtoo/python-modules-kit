# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CARGO_OPTIONAL="yes"
CRATES="
Inflector-0.11.4
aliasable-0.1.3
asn1-0.15.2
asn1_derive-0.15.2
autocfg-1.1.0
base64-0.13.1
bitflags-1.3.2
cc-1.0.79
cfg-if-1.0.0
foreign-types-0.3.2
foreign-types-shared-0.1.1
indoc-1.0.9
libc-0.2.144
lock_api-0.4.9
memoffset-0.8.0
once_cell-1.17.2
openssl-0.10.54
openssl-macros-0.1.1
openssl-sys-0.9.88
ouroboros-0.15.6
ouroboros_macro-0.15.6
parking_lot-0.12.1
parking_lot_core-0.9.7
pem-1.1.1
pkg-config-0.3.27
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-1.0.59
pyo3-0.18.3
pyo3-build-config-0.18.3
pyo3-ffi-0.18.3
pyo3-macros-0.18.3
pyo3-macros-backend-0.18.3
quote-1.0.28
redox_syscall-0.2.16
scopeguard-1.1.0
smallvec-1.10.0
syn-1.0.109
syn-2.0.18
target-lexicon-0.12.7
unicode-ident-1.0.9
unindent-0.1.11
vcpkg-0.2.15
version_check-0.9.4
windows-sys-0.45.0
windows-targets-0.42.2
windows_aarch64_gnullvm-0.42.2
windows_aarch64_msvc-0.42.2
windows_i686_gnu-0.42.2
windows_i686_msvc-0.42.2
windows_x86_64_gnu-0.42.2
windows_x86_64_gnullvm-0.42.2
windows_x86_64_msvc-0.42.2
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE=" https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/19/8c/47f061de65d1571210dc46436c14a0a4c260fd0f3eaf61ce9b9d445ce12f/cryptography-41.0.1.tar.gz -> cryptography-41.0.1.tar.gz
$(cargo_crate_uris ${CRATES})
"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	$(python_gen_cond_dep '>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}] >=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]' -3)"
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
S="${WORKDIR}/cryptography-41.0.1"

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
