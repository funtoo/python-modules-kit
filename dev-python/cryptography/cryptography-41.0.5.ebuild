# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
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
proc-macro2-1.0.64
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
SRC_URI="https://crates.io/api/v1/crates/Inflector/0.11.4/download -> Inflector-0.11.4.crate
https://crates.io/api/v1/crates/aliasable/0.1.3/download -> aliasable-0.1.3.crate
https://crates.io/api/v1/crates/asn1/0.15.2/download -> asn1-0.15.2.crate
https://crates.io/api/v1/crates/asn1_derive/0.15.2/download -> asn1_derive-0.15.2.crate
https://crates.io/api/v1/crates/autocfg/1.1.0/download -> autocfg-1.1.0.crate
https://crates.io/api/v1/crates/base64/0.13.1/download -> base64-0.13.1.crate
https://crates.io/api/v1/crates/bitflags/1.3.2/download -> bitflags-1.3.2.crate
https://crates.io/api/v1/crates/cc/1.0.79/download -> cc-1.0.79.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/indoc/1.0.9/download -> indoc-1.0.9.crate
https://crates.io/api/v1/crates/libc/0.2.144/download -> libc-0.2.144.crate
https://crates.io/api/v1/crates/lock_api/0.4.9/download -> lock_api-0.4.9.crate
https://crates.io/api/v1/crates/memoffset/0.8.0/download -> memoffset-0.8.0.crate
https://crates.io/api/v1/crates/once_cell/1.17.2/download -> once_cell-1.17.2.crate
https://crates.io/api/v1/crates/openssl/0.10.54/download -> openssl-0.10.54.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.88/download -> openssl-sys-0.9.88.crate
https://crates.io/api/v1/crates/ouroboros/0.15.6/download -> ouroboros-0.15.6.crate
https://crates.io/api/v1/crates/ouroboros_macro/0.15.6/download -> ouroboros_macro-0.15.6.crate
https://crates.io/api/v1/crates/parking_lot/0.12.1/download -> parking_lot-0.12.1.crate
https://crates.io/api/v1/crates/parking_lot_core/0.9.7/download -> parking_lot_core-0.9.7.crate
https://crates.io/api/v1/crates/pem/1.1.1/download -> pem-1.1.1.crate
https://crates.io/api/v1/crates/pkg-config/0.3.27/download -> pkg-config-0.3.27.crate
https://crates.io/api/v1/crates/proc-macro-error/1.0.4/download -> proc-macro-error-1.0.4.crate
https://crates.io/api/v1/crates/proc-macro-error-attr/1.0.4/download -> proc-macro-error-attr-1.0.4.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.64/download -> proc-macro2-1.0.64.crate
https://crates.io/api/v1/crates/pyo3/0.18.3/download -> pyo3-0.18.3.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.18.3/download -> pyo3-build-config-0.18.3.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.18.3/download -> pyo3-ffi-0.18.3.crate
https://crates.io/api/v1/crates/pyo3-macros/0.18.3/download -> pyo3-macros-0.18.3.crate
https://crates.io/api/v1/crates/pyo3-macros-backend/0.18.3/download -> pyo3-macros-backend-0.18.3.crate
https://crates.io/api/v1/crates/quote/1.0.28/download -> quote-1.0.28.crate
https://crates.io/api/v1/crates/redox_syscall/0.2.16/download -> redox_syscall-0.2.16.crate
https://crates.io/api/v1/crates/scopeguard/1.1.0/download -> scopeguard-1.1.0.crate
https://crates.io/api/v1/crates/smallvec/1.10.0/download -> smallvec-1.10.0.crate
https://crates.io/api/v1/crates/syn/1.0.109/download -> syn-1.0.109.crate
https://crates.io/api/v1/crates/syn/2.0.18/download -> syn-2.0.18.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.7/download -> target-lexicon-0.12.7.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.9/download -> unicode-ident-1.0.9.crate
https://crates.io/api/v1/crates/unindent/0.1.11/download -> unindent-0.1.11.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://crates.io/api/v1/crates/version_check/0.9.4/download -> version_check-0.9.4.crate
https://crates.io/api/v1/crates/windows-sys/0.45.0/download -> windows-sys-0.45.0.crate
https://crates.io/api/v1/crates/windows-targets/0.42.2/download -> windows-targets-0.42.2.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.42.2/download -> windows_aarch64_gnullvm-0.42.2.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.42.2/download -> windows_aarch64_msvc-0.42.2.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.42.2/download -> windows_i686_gnu-0.42.2.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.42.2/download -> windows_i686_msvc-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.42.2/download -> windows_x86_64_gnu-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.42.2/download -> windows_x86_64_gnullvm-0.42.2.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.42.2/download -> windows_x86_64_msvc-0.42.2.crate
https://files.pythonhosted.org/packages/16/a7/38fdcdd634515f589c8c723608c0f0b38d66c6c2320b3095967486f3045a/cryptography-41.0.5.tar.gz -> cryptography-41.0.5.tar.gz
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
	python_targets_python2_7? ( dev-python/cryptography-compat )
	>=dev-python/six-1.4.1[${PYTHON_USEDEP}]
	virtual/python-enum34[${PYTHON_USEDEP}]
	virtual/python-ipaddress[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
	idna? ( >=dev-python/idna-2.1[${PYTHON_USEDEP}] )"
IUSE="cpu_flags_x86_sse2 idna libressl python_targets_python2_7"
SLOT="0"
LICENSE="|| ( Apache-2.0 BSD )"
KEYWORDS="*"
S="${WORKDIR}/cryptography-41.0.5"

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
