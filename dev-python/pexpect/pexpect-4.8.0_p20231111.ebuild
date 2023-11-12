# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pexpect/pexpect"
SRC_URI="https://github.com/pexpect/pexpect/archive/c53497663c1a25603ccf8ba7daca03b319387344.zip -> pexpect-4.8.0_p20231111-c534976.zip
"

DEPEND=""
RDEPEND=">=dev-python/ptyprocess-0.5.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/pexpect-* "$S" || die
	fi
}