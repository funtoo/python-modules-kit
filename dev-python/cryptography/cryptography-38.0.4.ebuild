# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CARGO_OPTIONAL="yes"
CRATES="
Inflector-0.11.4
aliasable-0.1.3
android_system_properties-0.1.5
asn1-0.12.2
asn1_derive-0.12.2
autocfg-1.1.0
base64-0.13.0
bitflags-1.3.2
bumpalo-3.10.0
cfg-if-1.0.0
chrono-0.4.22
core-foundation-sys-0.8.3
iana-time-zone-0.1.47
indoc-0.3.6
indoc-impl-0.3.6
instant-0.1.12
js-sys-0.3.59
libc-0.2.132
lock_api-0.4.8
log-0.4.17
num-integer-0.1.45
num-traits-0.2.15
once_cell-1.14.0
ouroboros-0.15.4
ouroboros_macro-0.15.4
parking_lot-0.11.2
parking_lot_core-0.8.5
paste-0.1.18
paste-impl-0.1.18
pem-1.1.0
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro-hack-0.5.19
proc-macro2-1.0.43
pyo3-0.15.2
pyo3-build-config-0.15.2
pyo3-macros-0.15.2
pyo3-macros-backend-0.15.2
quote-1.0.21
redox_syscall-0.2.16
scopeguard-1.1.0
smallvec-1.9.0
syn-1.0.99
unicode-ident-1.0.3
unindent-0.1.10
version_check-0.9.4
wasm-bindgen-0.2.82
wasm-bindgen-backend-0.2.82
wasm-bindgen-macro-0.2.82
wasm-bindgen-macro-support-0.2.82
wasm-bindgen-shared-0.2.82
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-x86_64-pc-windows-gnu-0.4.0
"

inherit cargo distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pyca/cryptography https://pypi.org/project/cryptography/"
SRC_URI="https://files.pythonhosted.org/packages/e3/3f/41186b1f2fd86a542d399175f6b8e43f82cd4dfa51235a0b030a042b811a/cryptography-38.0.4.tar.gz -> cryptography-38.0.4.tar.gz
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
S="${WORKDIR}/cryptography-38.0.4"

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
