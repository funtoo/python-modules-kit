# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
CARGO_OPTIONAL="yes"
CRATES="
asn1-0.15.5
asn1_derive-0.15.5
autocfg-1.1.0
base64-0.21.7
bitflags-1.3.2
bitflags-2.4.2
cc-1.0.83
cfg-if-1.0.0
foreign-types-0.3.2
foreign-types-shared-0.1.1
heck-0.4.1
indoc-2.0.4
libc-0.2.152
lock_api-0.4.11
memoffset-0.9.0
once_cell-1.19.0
openssl-0.10.63
openssl-macros-0.1.1
openssl-sys-0.9.99
parking_lot-0.12.1
parking_lot_core-0.9.9
pem-3.0.3
pkg-config-0.3.29
proc-macro2-1.0.78
pyo3-0.20.2
pyo3-build-config-0.20.2
pyo3-ffi-0.20.2
pyo3-macros-0.20.2
pyo3-macros-backend-0.20.2
quote-1.0.35
redox_syscall-0.4.1
scopeguard-1.2.0
self_cell-1.0.3
smallvec-1.13.1
syn-2.0.48
target-lexicon-0.12.13
unicode-ident-1.0.12
unindent-0.2.3
vcpkg-0.2.15
windows-targets-0.48.5
windows_aarch64_gnullvm-0.48.5
windows_aarch64_msvc-0.48.5
windows_i686_gnu-0.48.5
windows_i686_msvc-0.48.5
windows_x86_64_gnu-0.48.5
windows_x86_64_gnullvm-0.48.5
windows_x86_64_msvc-0.48.5
"

inherit cargo distutils-r1

DESCRIPTION="Library providing cryptographic recipes and primitives"
HOMEPAGE=" https://pypi.org/project/cryptography/"
SRC_URI="https://crates.io/api/v1/crates/asn1/0.15.5/download -> asn1-0.15.5.crate
https://crates.io/api/v1/crates/asn1_derive/0.15.5/download -> asn1_derive-0.15.5.crate
https://crates.io/api/v1/crates/autocfg/1.1.0/download -> autocfg-1.1.0.crate
https://crates.io/api/v1/crates/base64/0.21.7/download -> base64-0.21.7.crate
https://crates.io/api/v1/crates/bitflags/1.3.2/download -> bitflags-1.3.2.crate
https://crates.io/api/v1/crates/bitflags/2.4.2/download -> bitflags-2.4.2.crate
https://crates.io/api/v1/crates/cc/1.0.83/download -> cc-1.0.83.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/heck/0.4.1/download -> heck-0.4.1.crate
https://crates.io/api/v1/crates/indoc/2.0.4/download -> indoc-2.0.4.crate
https://crates.io/api/v1/crates/libc/0.2.152/download -> libc-0.2.152.crate
https://crates.io/api/v1/crates/lock_api/0.4.11/download -> lock_api-0.4.11.crate
https://crates.io/api/v1/crates/memoffset/0.9.0/download -> memoffset-0.9.0.crate
https://crates.io/api/v1/crates/once_cell/1.19.0/download -> once_cell-1.19.0.crate
https://crates.io/api/v1/crates/openssl/0.10.63/download -> openssl-0.10.63.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.99/download -> openssl-sys-0.9.99.crate
https://crates.io/api/v1/crates/parking_lot/0.12.1/download -> parking_lot-0.12.1.crate
https://crates.io/api/v1/crates/parking_lot_core/0.9.9/download -> parking_lot_core-0.9.9.crate
https://crates.io/api/v1/crates/pem/3.0.3/download -> pem-3.0.3.crate
https://crates.io/api/v1/crates/pkg-config/0.3.29/download -> pkg-config-0.3.29.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.78/download -> proc-macro2-1.0.78.crate
https://crates.io/api/v1/crates/pyo3/0.20.2/download -> pyo3-0.20.2.crate
https://crates.io/api/v1/crates/pyo3-build-config/0.20.2/download -> pyo3-build-config-0.20.2.crate
https://crates.io/api/v1/crates/pyo3-ffi/0.20.2/download -> pyo3-ffi-0.20.2.crate
https://crates.io/api/v1/crates/pyo3-macros/0.20.2/download -> pyo3-macros-0.20.2.crate
https://crates.io/api/v1/crates/pyo3-macros-backend/0.20.2/download -> pyo3-macros-backend-0.20.2.crate
https://crates.io/api/v1/crates/quote/1.0.35/download -> quote-1.0.35.crate
https://crates.io/api/v1/crates/redox_syscall/0.4.1/download -> redox_syscall-0.4.1.crate
https://crates.io/api/v1/crates/scopeguard/1.2.0/download -> scopeguard-1.2.0.crate
https://crates.io/api/v1/crates/self_cell/1.0.3/download -> self_cell-1.0.3.crate
https://crates.io/api/v1/crates/smallvec/1.13.1/download -> smallvec-1.13.1.crate
https://crates.io/api/v1/crates/syn/2.0.48/download -> syn-2.0.48.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.13/download -> target-lexicon-0.12.13.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.12/download -> unicode-ident-1.0.12.crate
https://crates.io/api/v1/crates/unindent/0.2.3/download -> unindent-0.2.3.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://crates.io/api/v1/crates/windows-targets/0.48.5/download -> windows-targets-0.48.5.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.48.5/download -> windows_aarch64_gnullvm-0.48.5.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.48.5/download -> windows_aarch64_msvc-0.48.5.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.48.5/download -> windows_i686_gnu-0.48.5.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.48.5/download -> windows_i686_msvc-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.48.5/download -> windows_x86_64_gnu-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.48.5/download -> windows_x86_64_gnullvm-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.48.5/download -> windows_x86_64_msvc-0.48.5.crate
https://files.pythonhosted.org/packages/1d/95/e81ad3a9caadfc6a4367de7432fd3b779a2e2af760ce9a9cb4f5704d57ca/cryptography-42.0.0.tar.gz -> cryptography-42.0.0.tar.gz
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
S="${WORKDIR}/cryptography-42.0.0"

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
