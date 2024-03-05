# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
CRATES="
adler-1.0.2
ahash-0.8.7
aho-corasick-1.1.2
allocator-api2-0.2.16
anstream-0.6.11
anstyle-1.0.4
anstyle-parse-0.2.3
anstyle-query-1.0.2
anstyle-wincon-3.0.2
anyhow-1.0.80
autocfg-1.1.0
base64-0.13.1
base64-0.21.7
bitflags-1.3.2
bitflags-2.4.2
block-buffer-0.10.4
bstr-1.9.0
byteorder-1.5.0
bytes-1.5.0
bytesize-1.3.0
bzip2-0.4.4
bzip2-sys-0.1.11+1.0.8
cab-0.4.1
camino-1.1.6
cargo-config2-0.1.19
cargo-options-0.7.2
cargo-platform-0.1.6
cargo-xwin-0.16.4
cargo-zigbuild-0.18.3
cargo_metadata-0.18.1
cbindgen-0.26.0
cc-1.0.88
cfb-0.9.0
cfg-if-1.0.0
charset-0.1.3
chumsky-0.9.3
clap-4.4.18
clap_builder-4.4.18
clap_complete-4.4.9
clap_complete_command-0.5.1
clap_complete_fig-4.4.2
clap_complete_nushell-0.1.11
clap_derive-4.4.7
clap_lex-0.6.0
cli-table-0.4.7
colorchoice-1.0.0
configparser-3.0.4
console-0.15.8
content_inspector-0.2.4
core-foundation-0.9.4
core-foundation-sys-0.8.6
cpufeatures-0.2.12
crc32fast-1.3.2
crossbeam-channel-0.5.11
crossbeam-deque-0.8.5
crossbeam-epoch-0.9.18
crossbeam-utils-0.8.19
crypto-common-0.1.6
data-encoding-2.5.0
deranged-0.3.11
derivative-2.2.0
dialoguer-0.11.0
diff-0.1.13
digest-0.10.7
dirs-5.0.1
dirs-sys-0.4.1
dissimilar-1.0.7
dunce-1.0.4
either-1.9.0
encode_unicode-0.3.6
encoding_rs-0.8.33
equivalent-1.0.1
errno-0.3.8
expect-test-1.4.1
fastrand-2.0.1
fat-macho-0.4.8
filetime-0.2.23
flate2-1.0.28
fnv-1.0.7
foreign-types-0.3.2
foreign-types-shared-0.1.1
form_urlencoded-1.2.1
fs-err-2.11.0
generic-array-0.14.7
getrandom-0.2.12
glob-0.3.1
globset-0.4.14
goblin-0.8.0
hashbrown-0.12.3
hashbrown-0.14.3
heck-0.4.1
home-0.5.9
humantime-2.1.0
humantime-serde-1.1.1
idna-0.5.0
ignore-0.4.22
indexmap-1.9.3
indexmap-2.2.3
indicatif-0.17.7
indoc-2.0.4
instant-0.1.12
itertools-0.11.0
itertools-0.12.1
itoa-1.0.10
keyring-2.3.2
lazy_static-1.4.0
lddtree-0.3.4
libc-0.2.152
libredox-0.0.1
linux-keyutils-0.2.4
linux-raw-sys-0.4.13
lock_api-0.4.11
log-0.4.20
lzxd-0.1.4
mailparse-0.14.1
matchers-0.1.0
memchr-2.7.1
mime-0.3.17
mime_guess-2.0.4
minijinja-1.0.12
minimal-lexical-0.2.1
miniz_oxide-0.7.1
msi-0.7.0
multipart-0.18.0
native-tls-0.2.11
nom-7.1.3
normalize-line-endings-0.3.0
normpath-1.1.1
nu-ansi-term-0.46.0
num-conv-0.1.0
number_prefix-0.4.0
once_cell-1.19.0
openssl-0.10.63
openssl-macros-0.1.1
openssl-probe-0.1.5
openssl-sys-0.9.99
option-ext-0.2.0
os_pipe-1.1.5
overload-0.1.1
parking_lot-0.12.1
parking_lot_core-0.9.9
paste-1.0.14
path-slash-0.2.1
pep440_rs-0.5.0
pep508_rs-0.4.2
percent-encoding-2.3.1
pin-project-lite-0.2.13
pkg-config-0.3.29
plain-0.2.3
platform-info-2.0.2
portable-atomic-1.6.0
powerfmt-0.2.0
ppv-lite86-0.2.17
pretty_assertions-1.4.0
proc-macro2-1.0.78
psm-0.1.21
pyproject-toml-0.10.0
python-pkginfo-0.6.0
quote-1.0.35
quoted_printable-0.4.8
quoted_printable-0.5.0
rand-0.8.5
rand_chacha-0.3.1
rand_core-0.6.4
rayon-1.8.1
rayon-core-1.12.1
redox_syscall-0.4.1
redox_users-0.4.4
regex-1.10.3
regex-automata-0.1.10
regex-automata-0.4.5
regex-syntax-0.6.29
regex-syntax-0.8.2
rfc2047-decoder-0.2.2
ring-0.17.7
rustc_version-0.4.0
rustix-0.38.30
rustls-0.22.2
rustls-pemfile-2.1.0
rustls-pki-types-1.3.1
rustls-webpki-0.102.1
rustversion-1.0.14
ryu-1.0.16
same-file-1.0.6
schannel-0.1.23
scopeguard-1.2.0
scroll-0.12.0
scroll_derive-0.12.0
security-framework-2.9.2
security-framework-sys-2.9.1
semver-1.0.22
serde-1.0.197
serde_derive-1.0.197
serde_json-1.0.114
serde_spanned-0.6.5
sha2-0.10.8
sharded-slab-0.1.7
shell-words-1.1.0
shlex-1.3.0
similar-2.4.0
smallvec-1.13.1
smawk-0.3.2
snapbox-0.5.7
snapbox-macros-0.3.8
socks-0.3.4
spin-0.9.8
stacker-0.1.15
static_assertions-1.1.0
strsim-0.10.0
subtle-2.5.0
syn-1.0.109
syn-2.0.48
tar-0.4.40
target-lexicon-0.12.14
tempfile-3.9.0
termcolor-1.4.1
terminal_size-0.3.0
textwrap-0.16.1
thiserror-1.0.57
thiserror-impl-1.0.57
thread_local-1.1.7
time-0.3.34
time-core-0.1.2
time-macros-0.2.17
tinyvec-1.6.0
tinyvec_macros-0.1.1
toml-0.5.11
toml-0.8.10
toml_datetime-0.6.5
toml_edit-0.22.6
tracing-0.1.40
tracing-attributes-0.1.27
tracing-core-0.1.32
tracing-log-0.2.0
tracing-serde-0.1.3
tracing-subscriber-0.3.18
trycmd-0.15.0
twox-hash-1.6.3
typenum-1.17.0
unicase-2.7.0
unicode-bidi-0.3.15
unicode-ident-1.0.12
unicode-linebreak-0.1.5
unicode-normalization-0.1.22
unicode-width-0.1.11
unicode-xid-0.2.4
unscanny-0.1.0
untrusted-0.9.0
ureq-2.9.6
url-2.5.0
urlencoding-2.1.3
utf8parse-0.2.1
uuid-1.7.0
valuable-0.1.0
vcpkg-0.2.15
version_check-0.9.4
versions-5.0.1
wait-timeout-0.2.0
walkdir-2.4.0
wasi-0.11.0+wasi-snapshot-preview1
webpki-roots-0.26.0
which-5.0.0
which-6.0.0
wild-2.2.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.6
winapi-x86_64-pc-windows-gnu-0.4.0
windows-sys-0.48.0
windows-sys-0.52.0
windows-targets-0.48.5
windows-targets-0.52.0
windows_aarch64_gnullvm-0.48.5
windows_aarch64_gnullvm-0.52.0
windows_aarch64_msvc-0.48.5
windows_aarch64_msvc-0.52.0
windows_i686_gnu-0.48.5
windows_i686_gnu-0.52.0
windows_i686_msvc-0.48.5
windows_i686_msvc-0.52.0
windows_x86_64_gnu-0.48.5
windows_x86_64_gnu-0.52.0
windows_x86_64_gnullvm-0.48.5
windows_x86_64_gnullvm-0.52.0
windows_x86_64_msvc-0.48.5
windows_x86_64_msvc-0.52.0
winnow-0.6.2
xattr-1.3.1
xwin-0.5.0
yansi-0.5.1
zerocopy-0.7.32
zerocopy-derive-0.7.32
zeroize-1.7.0
zip-0.6.6
"

inherit cargo distutils-r1

DESCRIPTION="Build and publish crates with pyo3, rust-cpython and cffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin https://pypi.org/project/maturin/"
SRC_URI="https://crates.io/api/v1/crates/adler/1.0.2/download -> adler-1.0.2.crate
https://crates.io/api/v1/crates/ahash/0.8.7/download -> ahash-0.8.7.crate
https://crates.io/api/v1/crates/aho-corasick/1.1.2/download -> aho-corasick-1.1.2.crate
https://crates.io/api/v1/crates/allocator-api2/0.2.16/download -> allocator-api2-0.2.16.crate
https://crates.io/api/v1/crates/anstream/0.6.11/download -> anstream-0.6.11.crate
https://crates.io/api/v1/crates/anstyle/1.0.4/download -> anstyle-1.0.4.crate
https://crates.io/api/v1/crates/anstyle-parse/0.2.3/download -> anstyle-parse-0.2.3.crate
https://crates.io/api/v1/crates/anstyle-query/1.0.2/download -> anstyle-query-1.0.2.crate
https://crates.io/api/v1/crates/anstyle-wincon/3.0.2/download -> anstyle-wincon-3.0.2.crate
https://crates.io/api/v1/crates/anyhow/1.0.80/download -> anyhow-1.0.80.crate
https://crates.io/api/v1/crates/autocfg/1.1.0/download -> autocfg-1.1.0.crate
https://crates.io/api/v1/crates/base64/0.13.1/download -> base64-0.13.1.crate
https://crates.io/api/v1/crates/base64/0.21.7/download -> base64-0.21.7.crate
https://crates.io/api/v1/crates/bitflags/1.3.2/download -> bitflags-1.3.2.crate
https://crates.io/api/v1/crates/bitflags/2.4.2/download -> bitflags-2.4.2.crate
https://crates.io/api/v1/crates/block-buffer/0.10.4/download -> block-buffer-0.10.4.crate
https://crates.io/api/v1/crates/bstr/1.9.0/download -> bstr-1.9.0.crate
https://crates.io/api/v1/crates/byteorder/1.5.0/download -> byteorder-1.5.0.crate
https://crates.io/api/v1/crates/bytes/1.5.0/download -> bytes-1.5.0.crate
https://crates.io/api/v1/crates/bytesize/1.3.0/download -> bytesize-1.3.0.crate
https://crates.io/api/v1/crates/bzip2/0.4.4/download -> bzip2-0.4.4.crate
https://crates.io/api/v1/crates/bzip2-sys/0.1.11+1.0.8/download -> bzip2-sys-0.1.11+1.0.8.crate
https://crates.io/api/v1/crates/cab/0.4.1/download -> cab-0.4.1.crate
https://crates.io/api/v1/crates/camino/1.1.6/download -> camino-1.1.6.crate
https://crates.io/api/v1/crates/cargo-config2/0.1.19/download -> cargo-config2-0.1.19.crate
https://crates.io/api/v1/crates/cargo-options/0.7.2/download -> cargo-options-0.7.2.crate
https://crates.io/api/v1/crates/cargo-platform/0.1.6/download -> cargo-platform-0.1.6.crate
https://crates.io/api/v1/crates/cargo-xwin/0.16.4/download -> cargo-xwin-0.16.4.crate
https://crates.io/api/v1/crates/cargo-zigbuild/0.18.3/download -> cargo-zigbuild-0.18.3.crate
https://crates.io/api/v1/crates/cargo_metadata/0.18.1/download -> cargo_metadata-0.18.1.crate
https://crates.io/api/v1/crates/cbindgen/0.26.0/download -> cbindgen-0.26.0.crate
https://crates.io/api/v1/crates/cc/1.0.88/download -> cc-1.0.88.crate
https://crates.io/api/v1/crates/cfb/0.9.0/download -> cfb-0.9.0.crate
https://crates.io/api/v1/crates/cfg-if/1.0.0/download -> cfg-if-1.0.0.crate
https://crates.io/api/v1/crates/charset/0.1.3/download -> charset-0.1.3.crate
https://crates.io/api/v1/crates/chumsky/0.9.3/download -> chumsky-0.9.3.crate
https://crates.io/api/v1/crates/clap/4.4.18/download -> clap-4.4.18.crate
https://crates.io/api/v1/crates/clap_builder/4.4.18/download -> clap_builder-4.4.18.crate
https://crates.io/api/v1/crates/clap_complete/4.4.9/download -> clap_complete-4.4.9.crate
https://crates.io/api/v1/crates/clap_complete_command/0.5.1/download -> clap_complete_command-0.5.1.crate
https://crates.io/api/v1/crates/clap_complete_fig/4.4.2/download -> clap_complete_fig-4.4.2.crate
https://crates.io/api/v1/crates/clap_complete_nushell/0.1.11/download -> clap_complete_nushell-0.1.11.crate
https://crates.io/api/v1/crates/clap_derive/4.4.7/download -> clap_derive-4.4.7.crate
https://crates.io/api/v1/crates/clap_lex/0.6.0/download -> clap_lex-0.6.0.crate
https://crates.io/api/v1/crates/cli-table/0.4.7/download -> cli-table-0.4.7.crate
https://crates.io/api/v1/crates/colorchoice/1.0.0/download -> colorchoice-1.0.0.crate
https://crates.io/api/v1/crates/configparser/3.0.4/download -> configparser-3.0.4.crate
https://crates.io/api/v1/crates/console/0.15.8/download -> console-0.15.8.crate
https://crates.io/api/v1/crates/content_inspector/0.2.4/download -> content_inspector-0.2.4.crate
https://crates.io/api/v1/crates/core-foundation/0.9.4/download -> core-foundation-0.9.4.crate
https://crates.io/api/v1/crates/core-foundation-sys/0.8.6/download -> core-foundation-sys-0.8.6.crate
https://crates.io/api/v1/crates/cpufeatures/0.2.12/download -> cpufeatures-0.2.12.crate
https://crates.io/api/v1/crates/crc32fast/1.3.2/download -> crc32fast-1.3.2.crate
https://crates.io/api/v1/crates/crossbeam-channel/0.5.11/download -> crossbeam-channel-0.5.11.crate
https://crates.io/api/v1/crates/crossbeam-deque/0.8.5/download -> crossbeam-deque-0.8.5.crate
https://crates.io/api/v1/crates/crossbeam-epoch/0.9.18/download -> crossbeam-epoch-0.9.18.crate
https://crates.io/api/v1/crates/crossbeam-utils/0.8.19/download -> crossbeam-utils-0.8.19.crate
https://crates.io/api/v1/crates/crypto-common/0.1.6/download -> crypto-common-0.1.6.crate
https://crates.io/api/v1/crates/data-encoding/2.5.0/download -> data-encoding-2.5.0.crate
https://crates.io/api/v1/crates/deranged/0.3.11/download -> deranged-0.3.11.crate
https://crates.io/api/v1/crates/derivative/2.2.0/download -> derivative-2.2.0.crate
https://crates.io/api/v1/crates/dialoguer/0.11.0/download -> dialoguer-0.11.0.crate
https://crates.io/api/v1/crates/diff/0.1.13/download -> diff-0.1.13.crate
https://crates.io/api/v1/crates/digest/0.10.7/download -> digest-0.10.7.crate
https://crates.io/api/v1/crates/dirs/5.0.1/download -> dirs-5.0.1.crate
https://crates.io/api/v1/crates/dirs-sys/0.4.1/download -> dirs-sys-0.4.1.crate
https://crates.io/api/v1/crates/dissimilar/1.0.7/download -> dissimilar-1.0.7.crate
https://crates.io/api/v1/crates/dunce/1.0.4/download -> dunce-1.0.4.crate
https://crates.io/api/v1/crates/either/1.9.0/download -> either-1.9.0.crate
https://crates.io/api/v1/crates/encode_unicode/0.3.6/download -> encode_unicode-0.3.6.crate
https://crates.io/api/v1/crates/encoding_rs/0.8.33/download -> encoding_rs-0.8.33.crate
https://crates.io/api/v1/crates/equivalent/1.0.1/download -> equivalent-1.0.1.crate
https://crates.io/api/v1/crates/errno/0.3.8/download -> errno-0.3.8.crate
https://crates.io/api/v1/crates/expect-test/1.4.1/download -> expect-test-1.4.1.crate
https://crates.io/api/v1/crates/fastrand/2.0.1/download -> fastrand-2.0.1.crate
https://crates.io/api/v1/crates/fat-macho/0.4.8/download -> fat-macho-0.4.8.crate
https://crates.io/api/v1/crates/filetime/0.2.23/download -> filetime-0.2.23.crate
https://crates.io/api/v1/crates/flate2/1.0.28/download -> flate2-1.0.28.crate
https://crates.io/api/v1/crates/fnv/1.0.7/download -> fnv-1.0.7.crate
https://crates.io/api/v1/crates/foreign-types/0.3.2/download -> foreign-types-0.3.2.crate
https://crates.io/api/v1/crates/foreign-types-shared/0.1.1/download -> foreign-types-shared-0.1.1.crate
https://crates.io/api/v1/crates/form_urlencoded/1.2.1/download -> form_urlencoded-1.2.1.crate
https://crates.io/api/v1/crates/fs-err/2.11.0/download -> fs-err-2.11.0.crate
https://crates.io/api/v1/crates/generic-array/0.14.7/download -> generic-array-0.14.7.crate
https://crates.io/api/v1/crates/getrandom/0.2.12/download -> getrandom-0.2.12.crate
https://crates.io/api/v1/crates/glob/0.3.1/download -> glob-0.3.1.crate
https://crates.io/api/v1/crates/globset/0.4.14/download -> globset-0.4.14.crate
https://crates.io/api/v1/crates/goblin/0.8.0/download -> goblin-0.8.0.crate
https://crates.io/api/v1/crates/hashbrown/0.12.3/download -> hashbrown-0.12.3.crate
https://crates.io/api/v1/crates/hashbrown/0.14.3/download -> hashbrown-0.14.3.crate
https://crates.io/api/v1/crates/heck/0.4.1/download -> heck-0.4.1.crate
https://crates.io/api/v1/crates/home/0.5.9/download -> home-0.5.9.crate
https://crates.io/api/v1/crates/humantime/2.1.0/download -> humantime-2.1.0.crate
https://crates.io/api/v1/crates/humantime-serde/1.1.1/download -> humantime-serde-1.1.1.crate
https://crates.io/api/v1/crates/idna/0.5.0/download -> idna-0.5.0.crate
https://crates.io/api/v1/crates/ignore/0.4.22/download -> ignore-0.4.22.crate
https://crates.io/api/v1/crates/indexmap/1.9.3/download -> indexmap-1.9.3.crate
https://crates.io/api/v1/crates/indexmap/2.2.3/download -> indexmap-2.2.3.crate
https://crates.io/api/v1/crates/indicatif/0.17.7/download -> indicatif-0.17.7.crate
https://crates.io/api/v1/crates/indoc/2.0.4/download -> indoc-2.0.4.crate
https://crates.io/api/v1/crates/instant/0.1.12/download -> instant-0.1.12.crate
https://crates.io/api/v1/crates/itertools/0.11.0/download -> itertools-0.11.0.crate
https://crates.io/api/v1/crates/itertools/0.12.1/download -> itertools-0.12.1.crate
https://crates.io/api/v1/crates/itoa/1.0.10/download -> itoa-1.0.10.crate
https://crates.io/api/v1/crates/keyring/2.3.2/download -> keyring-2.3.2.crate
https://crates.io/api/v1/crates/lazy_static/1.4.0/download -> lazy_static-1.4.0.crate
https://crates.io/api/v1/crates/lddtree/0.3.4/download -> lddtree-0.3.4.crate
https://crates.io/api/v1/crates/libc/0.2.152/download -> libc-0.2.152.crate
https://crates.io/api/v1/crates/libredox/0.0.1/download -> libredox-0.0.1.crate
https://crates.io/api/v1/crates/linux-keyutils/0.2.4/download -> linux-keyutils-0.2.4.crate
https://crates.io/api/v1/crates/linux-raw-sys/0.4.13/download -> linux-raw-sys-0.4.13.crate
https://crates.io/api/v1/crates/lock_api/0.4.11/download -> lock_api-0.4.11.crate
https://crates.io/api/v1/crates/log/0.4.20/download -> log-0.4.20.crate
https://crates.io/api/v1/crates/lzxd/0.1.4/download -> lzxd-0.1.4.crate
https://crates.io/api/v1/crates/mailparse/0.14.1/download -> mailparse-0.14.1.crate
https://crates.io/api/v1/crates/matchers/0.1.0/download -> matchers-0.1.0.crate
https://crates.io/api/v1/crates/memchr/2.7.1/download -> memchr-2.7.1.crate
https://crates.io/api/v1/crates/mime/0.3.17/download -> mime-0.3.17.crate
https://crates.io/api/v1/crates/mime_guess/2.0.4/download -> mime_guess-2.0.4.crate
https://crates.io/api/v1/crates/minijinja/1.0.12/download -> minijinja-1.0.12.crate
https://crates.io/api/v1/crates/minimal-lexical/0.2.1/download -> minimal-lexical-0.2.1.crate
https://crates.io/api/v1/crates/miniz_oxide/0.7.1/download -> miniz_oxide-0.7.1.crate
https://crates.io/api/v1/crates/msi/0.7.0/download -> msi-0.7.0.crate
https://crates.io/api/v1/crates/multipart/0.18.0/download -> multipart-0.18.0.crate
https://crates.io/api/v1/crates/native-tls/0.2.11/download -> native-tls-0.2.11.crate
https://crates.io/api/v1/crates/nom/7.1.3/download -> nom-7.1.3.crate
https://crates.io/api/v1/crates/normalize-line-endings/0.3.0/download -> normalize-line-endings-0.3.0.crate
https://crates.io/api/v1/crates/normpath/1.1.1/download -> normpath-1.1.1.crate
https://crates.io/api/v1/crates/nu-ansi-term/0.46.0/download -> nu-ansi-term-0.46.0.crate
https://crates.io/api/v1/crates/num-conv/0.1.0/download -> num-conv-0.1.0.crate
https://crates.io/api/v1/crates/number_prefix/0.4.0/download -> number_prefix-0.4.0.crate
https://crates.io/api/v1/crates/once_cell/1.19.0/download -> once_cell-1.19.0.crate
https://crates.io/api/v1/crates/openssl/0.10.63/download -> openssl-0.10.63.crate
https://crates.io/api/v1/crates/openssl-macros/0.1.1/download -> openssl-macros-0.1.1.crate
https://crates.io/api/v1/crates/openssl-probe/0.1.5/download -> openssl-probe-0.1.5.crate
https://crates.io/api/v1/crates/openssl-sys/0.9.99/download -> openssl-sys-0.9.99.crate
https://crates.io/api/v1/crates/option-ext/0.2.0/download -> option-ext-0.2.0.crate
https://crates.io/api/v1/crates/os_pipe/1.1.5/download -> os_pipe-1.1.5.crate
https://crates.io/api/v1/crates/overload/0.1.1/download -> overload-0.1.1.crate
https://crates.io/api/v1/crates/parking_lot/0.12.1/download -> parking_lot-0.12.1.crate
https://crates.io/api/v1/crates/parking_lot_core/0.9.9/download -> parking_lot_core-0.9.9.crate
https://crates.io/api/v1/crates/paste/1.0.14/download -> paste-1.0.14.crate
https://crates.io/api/v1/crates/path-slash/0.2.1/download -> path-slash-0.2.1.crate
https://crates.io/api/v1/crates/pep440_rs/0.5.0/download -> pep440_rs-0.5.0.crate
https://crates.io/api/v1/crates/pep508_rs/0.4.2/download -> pep508_rs-0.4.2.crate
https://crates.io/api/v1/crates/percent-encoding/2.3.1/download -> percent-encoding-2.3.1.crate
https://crates.io/api/v1/crates/pin-project-lite/0.2.13/download -> pin-project-lite-0.2.13.crate
https://crates.io/api/v1/crates/pkg-config/0.3.29/download -> pkg-config-0.3.29.crate
https://crates.io/api/v1/crates/plain/0.2.3/download -> plain-0.2.3.crate
https://crates.io/api/v1/crates/platform-info/2.0.2/download -> platform-info-2.0.2.crate
https://crates.io/api/v1/crates/portable-atomic/1.6.0/download -> portable-atomic-1.6.0.crate
https://crates.io/api/v1/crates/powerfmt/0.2.0/download -> powerfmt-0.2.0.crate
https://crates.io/api/v1/crates/ppv-lite86/0.2.17/download -> ppv-lite86-0.2.17.crate
https://crates.io/api/v1/crates/pretty_assertions/1.4.0/download -> pretty_assertions-1.4.0.crate
https://crates.io/api/v1/crates/proc-macro2/1.0.78/download -> proc-macro2-1.0.78.crate
https://crates.io/api/v1/crates/psm/0.1.21/download -> psm-0.1.21.crate
https://crates.io/api/v1/crates/pyproject-toml/0.10.0/download -> pyproject-toml-0.10.0.crate
https://crates.io/api/v1/crates/python-pkginfo/0.6.0/download -> python-pkginfo-0.6.0.crate
https://crates.io/api/v1/crates/quote/1.0.35/download -> quote-1.0.35.crate
https://crates.io/api/v1/crates/quoted_printable/0.4.8/download -> quoted_printable-0.4.8.crate
https://crates.io/api/v1/crates/quoted_printable/0.5.0/download -> quoted_printable-0.5.0.crate
https://crates.io/api/v1/crates/rand/0.8.5/download -> rand-0.8.5.crate
https://crates.io/api/v1/crates/rand_chacha/0.3.1/download -> rand_chacha-0.3.1.crate
https://crates.io/api/v1/crates/rand_core/0.6.4/download -> rand_core-0.6.4.crate
https://crates.io/api/v1/crates/rayon/1.8.1/download -> rayon-1.8.1.crate
https://crates.io/api/v1/crates/rayon-core/1.12.1/download -> rayon-core-1.12.1.crate
https://crates.io/api/v1/crates/redox_syscall/0.4.1/download -> redox_syscall-0.4.1.crate
https://crates.io/api/v1/crates/redox_users/0.4.4/download -> redox_users-0.4.4.crate
https://crates.io/api/v1/crates/regex/1.10.3/download -> regex-1.10.3.crate
https://crates.io/api/v1/crates/regex-automata/0.1.10/download -> regex-automata-0.1.10.crate
https://crates.io/api/v1/crates/regex-automata/0.4.5/download -> regex-automata-0.4.5.crate
https://crates.io/api/v1/crates/regex-syntax/0.6.29/download -> regex-syntax-0.6.29.crate
https://crates.io/api/v1/crates/regex-syntax/0.8.2/download -> regex-syntax-0.8.2.crate
https://crates.io/api/v1/crates/rfc2047-decoder/0.2.2/download -> rfc2047-decoder-0.2.2.crate
https://crates.io/api/v1/crates/ring/0.17.7/download -> ring-0.17.7.crate
https://crates.io/api/v1/crates/rustc_version/0.4.0/download -> rustc_version-0.4.0.crate
https://crates.io/api/v1/crates/rustix/0.38.30/download -> rustix-0.38.30.crate
https://crates.io/api/v1/crates/rustls/0.22.2/download -> rustls-0.22.2.crate
https://crates.io/api/v1/crates/rustls-pemfile/2.1.0/download -> rustls-pemfile-2.1.0.crate
https://crates.io/api/v1/crates/rustls-pki-types/1.3.1/download -> rustls-pki-types-1.3.1.crate
https://crates.io/api/v1/crates/rustls-webpki/0.102.1/download -> rustls-webpki-0.102.1.crate
https://crates.io/api/v1/crates/rustversion/1.0.14/download -> rustversion-1.0.14.crate
https://crates.io/api/v1/crates/ryu/1.0.16/download -> ryu-1.0.16.crate
https://crates.io/api/v1/crates/same-file/1.0.6/download -> same-file-1.0.6.crate
https://crates.io/api/v1/crates/schannel/0.1.23/download -> schannel-0.1.23.crate
https://crates.io/api/v1/crates/scopeguard/1.2.0/download -> scopeguard-1.2.0.crate
https://crates.io/api/v1/crates/scroll/0.12.0/download -> scroll-0.12.0.crate
https://crates.io/api/v1/crates/scroll_derive/0.12.0/download -> scroll_derive-0.12.0.crate
https://crates.io/api/v1/crates/security-framework/2.9.2/download -> security-framework-2.9.2.crate
https://crates.io/api/v1/crates/security-framework-sys/2.9.1/download -> security-framework-sys-2.9.1.crate
https://crates.io/api/v1/crates/semver/1.0.22/download -> semver-1.0.22.crate
https://crates.io/api/v1/crates/serde/1.0.197/download -> serde-1.0.197.crate
https://crates.io/api/v1/crates/serde_derive/1.0.197/download -> serde_derive-1.0.197.crate
https://crates.io/api/v1/crates/serde_json/1.0.114/download -> serde_json-1.0.114.crate
https://crates.io/api/v1/crates/serde_spanned/0.6.5/download -> serde_spanned-0.6.5.crate
https://crates.io/api/v1/crates/sha2/0.10.8/download -> sha2-0.10.8.crate
https://crates.io/api/v1/crates/sharded-slab/0.1.7/download -> sharded-slab-0.1.7.crate
https://crates.io/api/v1/crates/shell-words/1.1.0/download -> shell-words-1.1.0.crate
https://crates.io/api/v1/crates/shlex/1.3.0/download -> shlex-1.3.0.crate
https://crates.io/api/v1/crates/similar/2.4.0/download -> similar-2.4.0.crate
https://crates.io/api/v1/crates/smallvec/1.13.1/download -> smallvec-1.13.1.crate
https://crates.io/api/v1/crates/smawk/0.3.2/download -> smawk-0.3.2.crate
https://crates.io/api/v1/crates/snapbox/0.5.7/download -> snapbox-0.5.7.crate
https://crates.io/api/v1/crates/snapbox-macros/0.3.8/download -> snapbox-macros-0.3.8.crate
https://crates.io/api/v1/crates/socks/0.3.4/download -> socks-0.3.4.crate
https://crates.io/api/v1/crates/spin/0.9.8/download -> spin-0.9.8.crate
https://crates.io/api/v1/crates/stacker/0.1.15/download -> stacker-0.1.15.crate
https://crates.io/api/v1/crates/static_assertions/1.1.0/download -> static_assertions-1.1.0.crate
https://crates.io/api/v1/crates/strsim/0.10.0/download -> strsim-0.10.0.crate
https://crates.io/api/v1/crates/subtle/2.5.0/download -> subtle-2.5.0.crate
https://crates.io/api/v1/crates/syn/1.0.109/download -> syn-1.0.109.crate
https://crates.io/api/v1/crates/syn/2.0.48/download -> syn-2.0.48.crate
https://crates.io/api/v1/crates/tar/0.4.40/download -> tar-0.4.40.crate
https://crates.io/api/v1/crates/target-lexicon/0.12.14/download -> target-lexicon-0.12.14.crate
https://crates.io/api/v1/crates/tempfile/3.9.0/download -> tempfile-3.9.0.crate
https://crates.io/api/v1/crates/termcolor/1.4.1/download -> termcolor-1.4.1.crate
https://crates.io/api/v1/crates/terminal_size/0.3.0/download -> terminal_size-0.3.0.crate
https://crates.io/api/v1/crates/textwrap/0.16.1/download -> textwrap-0.16.1.crate
https://crates.io/api/v1/crates/thiserror/1.0.57/download -> thiserror-1.0.57.crate
https://crates.io/api/v1/crates/thiserror-impl/1.0.57/download -> thiserror-impl-1.0.57.crate
https://crates.io/api/v1/crates/thread_local/1.1.7/download -> thread_local-1.1.7.crate
https://crates.io/api/v1/crates/time/0.3.34/download -> time-0.3.34.crate
https://crates.io/api/v1/crates/time-core/0.1.2/download -> time-core-0.1.2.crate
https://crates.io/api/v1/crates/time-macros/0.2.17/download -> time-macros-0.2.17.crate
https://crates.io/api/v1/crates/tinyvec/1.6.0/download -> tinyvec-1.6.0.crate
https://crates.io/api/v1/crates/tinyvec_macros/0.1.1/download -> tinyvec_macros-0.1.1.crate
https://crates.io/api/v1/crates/toml/0.5.11/download -> toml-0.5.11.crate
https://crates.io/api/v1/crates/toml/0.8.10/download -> toml-0.8.10.crate
https://crates.io/api/v1/crates/toml_datetime/0.6.5/download -> toml_datetime-0.6.5.crate
https://crates.io/api/v1/crates/toml_edit/0.22.6/download -> toml_edit-0.22.6.crate
https://crates.io/api/v1/crates/tracing/0.1.40/download -> tracing-0.1.40.crate
https://crates.io/api/v1/crates/tracing-attributes/0.1.27/download -> tracing-attributes-0.1.27.crate
https://crates.io/api/v1/crates/tracing-core/0.1.32/download -> tracing-core-0.1.32.crate
https://crates.io/api/v1/crates/tracing-log/0.2.0/download -> tracing-log-0.2.0.crate
https://crates.io/api/v1/crates/tracing-serde/0.1.3/download -> tracing-serde-0.1.3.crate
https://crates.io/api/v1/crates/tracing-subscriber/0.3.18/download -> tracing-subscriber-0.3.18.crate
https://crates.io/api/v1/crates/trycmd/0.15.0/download -> trycmd-0.15.0.crate
https://crates.io/api/v1/crates/twox-hash/1.6.3/download -> twox-hash-1.6.3.crate
https://crates.io/api/v1/crates/typenum/1.17.0/download -> typenum-1.17.0.crate
https://crates.io/api/v1/crates/unicase/2.7.0/download -> unicase-2.7.0.crate
https://crates.io/api/v1/crates/unicode-bidi/0.3.15/download -> unicode-bidi-0.3.15.crate
https://crates.io/api/v1/crates/unicode-ident/1.0.12/download -> unicode-ident-1.0.12.crate
https://crates.io/api/v1/crates/unicode-linebreak/0.1.5/download -> unicode-linebreak-0.1.5.crate
https://crates.io/api/v1/crates/unicode-normalization/0.1.22/download -> unicode-normalization-0.1.22.crate
https://crates.io/api/v1/crates/unicode-width/0.1.11/download -> unicode-width-0.1.11.crate
https://crates.io/api/v1/crates/unicode-xid/0.2.4/download -> unicode-xid-0.2.4.crate
https://crates.io/api/v1/crates/unscanny/0.1.0/download -> unscanny-0.1.0.crate
https://crates.io/api/v1/crates/untrusted/0.9.0/download -> untrusted-0.9.0.crate
https://crates.io/api/v1/crates/ureq/2.9.6/download -> ureq-2.9.6.crate
https://crates.io/api/v1/crates/url/2.5.0/download -> url-2.5.0.crate
https://crates.io/api/v1/crates/urlencoding/2.1.3/download -> urlencoding-2.1.3.crate
https://crates.io/api/v1/crates/utf8parse/0.2.1/download -> utf8parse-0.2.1.crate
https://crates.io/api/v1/crates/uuid/1.7.0/download -> uuid-1.7.0.crate
https://crates.io/api/v1/crates/valuable/0.1.0/download -> valuable-0.1.0.crate
https://crates.io/api/v1/crates/vcpkg/0.2.15/download -> vcpkg-0.2.15.crate
https://crates.io/api/v1/crates/version_check/0.9.4/download -> version_check-0.9.4.crate
https://crates.io/api/v1/crates/versions/5.0.1/download -> versions-5.0.1.crate
https://crates.io/api/v1/crates/wait-timeout/0.2.0/download -> wait-timeout-0.2.0.crate
https://crates.io/api/v1/crates/walkdir/2.4.0/download -> walkdir-2.4.0.crate
https://crates.io/api/v1/crates/wasi/0.11.0+wasi-snapshot-preview1/download -> wasi-0.11.0+wasi-snapshot-preview1.crate
https://crates.io/api/v1/crates/webpki-roots/0.26.0/download -> webpki-roots-0.26.0.crate
https://crates.io/api/v1/crates/which/5.0.0/download -> which-5.0.0.crate
https://crates.io/api/v1/crates/which/6.0.0/download -> which-6.0.0.crate
https://crates.io/api/v1/crates/wild/2.2.1/download -> wild-2.2.1.crate
https://crates.io/api/v1/crates/winapi/0.3.9/download -> winapi-0.3.9.crate
https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download -> winapi-i686-pc-windows-gnu-0.4.0.crate
https://crates.io/api/v1/crates/winapi-util/0.1.6/download -> winapi-util-0.1.6.crate
https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download -> winapi-x86_64-pc-windows-gnu-0.4.0.crate
https://crates.io/api/v1/crates/windows-sys/0.48.0/download -> windows-sys-0.48.0.crate
https://crates.io/api/v1/crates/windows-sys/0.52.0/download -> windows-sys-0.52.0.crate
https://crates.io/api/v1/crates/windows-targets/0.48.5/download -> windows-targets-0.48.5.crate
https://crates.io/api/v1/crates/windows-targets/0.52.0/download -> windows-targets-0.52.0.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.48.5/download -> windows_aarch64_gnullvm-0.48.5.crate
https://crates.io/api/v1/crates/windows_aarch64_gnullvm/0.52.0/download -> windows_aarch64_gnullvm-0.52.0.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.48.5/download -> windows_aarch64_msvc-0.48.5.crate
https://crates.io/api/v1/crates/windows_aarch64_msvc/0.52.0/download -> windows_aarch64_msvc-0.52.0.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.48.5/download -> windows_i686_gnu-0.48.5.crate
https://crates.io/api/v1/crates/windows_i686_gnu/0.52.0/download -> windows_i686_gnu-0.52.0.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.48.5/download -> windows_i686_msvc-0.48.5.crate
https://crates.io/api/v1/crates/windows_i686_msvc/0.52.0/download -> windows_i686_msvc-0.52.0.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.48.5/download -> windows_x86_64_gnu-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_gnu/0.52.0/download -> windows_x86_64_gnu-0.52.0.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.48.5/download -> windows_x86_64_gnullvm-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_gnullvm/0.52.0/download -> windows_x86_64_gnullvm-0.52.0.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.48.5/download -> windows_x86_64_msvc-0.48.5.crate
https://crates.io/api/v1/crates/windows_x86_64_msvc/0.52.0/download -> windows_x86_64_msvc-0.52.0.crate
https://crates.io/api/v1/crates/winnow/0.6.2/download -> winnow-0.6.2.crate
https://crates.io/api/v1/crates/xattr/1.3.1/download -> xattr-1.3.1.crate
https://crates.io/api/v1/crates/xwin/0.5.0/download -> xwin-0.5.0.crate
https://crates.io/api/v1/crates/yansi/0.5.1/download -> yansi-0.5.1.crate
https://crates.io/api/v1/crates/zerocopy/0.7.32/download -> zerocopy-0.7.32.crate
https://crates.io/api/v1/crates/zerocopy-derive/0.7.32/download -> zerocopy-derive-0.7.32.crate
https://crates.io/api/v1/crates/zeroize/1.7.0/download -> zeroize-1.7.0.crate
https://crates.io/api/v1/crates/zip/0.6.6/download -> zip-0.6.6.crate
https://files.pythonhosted.org/packages/cc/e5/6de242b8a6180dc81a75fb0791f983ba8d81f53786c829ed77765b25ca46/maturin-1.5.0.tar.gz -> maturin-1.5.0.tar.gz
$(cargo_crate_uris ${CRATES})"

DEPEND="
	dev-python/s[${PYTHON_USEDEP}]
	dev-python/e[${PYTHON_USEDEP}]
	dev-python/t[${PYTHON_USEDEP}]
	dev-python/u[${PYTHON_USEDEP}]
	dev-python/p[${PYTHON_USEDEP}]
	dev-python/t[${PYTHON_USEDEP}]
	dev-python/o[${PYTHON_USEDEP}]
	dev-python/o[${PYTHON_USEDEP}]
	dev-python/l[${PYTHON_USEDEP}]
	dev-python/s[${PYTHON_USEDEP}]
	dev-python/-[${PYTHON_USEDEP}]
	dev-python/r[${PYTHON_USEDEP}]
	dev-python/u[${PYTHON_USEDEP}]
	dev-python/s[${PYTHON_USEDEP}]
	dev-python/t[${PYTHON_USEDEP}]"
RDEPEND="dev-python/tomli[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/maturin-1.5.0"