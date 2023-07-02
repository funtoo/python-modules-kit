# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extension to the parse module"
HOMEPAGE="https://pypi.org/project/parse-type/"
SRC_URI="https://github.com/jenisys/parse_type/tarball/5ac997d364fc8e3a0d2efc7c94ae3ba753d01f40 -> parse_type-0.6.1-5ac997d.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/parse-1.18.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.11[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

post_src_unpack() {
	if [ ! -d "${S}" ]; then
		mv "${WORKDIR}"/jenisys-parse_type* "$S" || die
	fi
}

src_prepare() {
	default
	# hack to disable 2to3 which we don't need anyway and setuptools 58+ dies on
	sed -i -e 's/use_2to3/foo_2to3/g' setup.py || die
}
