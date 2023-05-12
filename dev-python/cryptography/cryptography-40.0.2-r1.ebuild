# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CARGO_OPTIONAL="yes"
CRATES="
Inflector-0.11.4
aliasable-0.1.3
android_system_properties-0.1.5
asn1-0.13.0
asn1_derive-0.13.0
autocfg-1.1.0
base64-0.13.1
bitflags-1.3.2
bumpalo-3.10.0
cc-1.0.79
cfg-if-1.0.0
chrono-0.4.24
codespan-reporting-0.11.1
core-foundation-sys-0.8.3
cxx-1.0.86
cxx-build-1.0.86
cxxbridge-flags-1.0.86
cxxbridge-macro-1.0.86
foreign-types-0.3.2
foreign-types-shared-0.1.1
iana-time-zone-0.1.54
iana-time-zone-haiku-0.1.1
indoc-0.3.6
indoc-impl-0.3.6
instant-0.1.12
js-sys-0.3.61
libc-0.2.140
link-cplusplus-1.0.8
lock_api-0.4.9
log-0.4.17
num-integer-0.1.45
num-traits-0.2.15
once_cell-1.14.0
openssl-0.10.50
openssl-macros-0.1.0
openssl-sys-0.9.85
ouroboros-0.15.6
ouroboros_macro-0.15.6
parking_lot-0.11.2
parking_lot_core-0.8.6
paste-0.1.18
paste-impl-0.1.18
pem-1.1.1
pkg-config-0.3.26
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.20+deprecated
proc-macro2-1.0.53
pyo3-0.15.2
pyo3-build-config-0.15.2
pyo3-macros-0.15.2
pyo3-macros-backend-0.15.2
quote-1.0.26
redox_syscall-0.2.16
scopeguard-1.1.0
scratch-1.0.5
smallvec-1.10.0
syn-1.0.109
termcolor-1.2.0
unicode-ident-1.0.8
unicode-width-0.1.10
unindent-0.1.11
vcpkg-0.2.15
version_check-0.9.4
wasm-bindgen-0.2.84
wasm-bindgen-backend-0.2.84
wasm-bindgen-macro-0.2.84
wasm-bindgen-macro-support-0.2.84
wasm-bindgen-shared-0.2.84
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
windows-0.46.0
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
HOMEPAGE="https://github.com/pyca/cryptography https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/f7/80/04cc7637238b78f8e7354900817135c5a23cf66dfb3f3a216c6d630d6833/cryptography-40.0.2.tar.gz -> cryptography-40.0.2.tar.gz
$(cargo_crate_uris ${CRATES})
"

DEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	$(python_gen_cond_dep '
	>=dev-python/setuptools-rust-0.12.1[${PYTHON_USEDEP}]
	>=dev-python/cffi-1.11.3[${PYTHON_USEDEP}]
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
S="${WORKDIR}/cryptography-40.0.2"

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
