# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="Cryptographic library for Python"
HOMEPAGE="https://www.pycryptodome.org https://pypi.org/project/pycryptodome/"
SRC_URI="https://files.pythonhosted.org/packages/88/7f/740b99ffb8173ba9d20eb890cc05187677df90219649645aca7e44eb8ff4/pycryptodome-3.10.1.tar.gz
"

DEPEND="
	dev-libs/gmp:0=
	>=dev-libs/libtomcrypt-1.18.2-r1:=
	virtual/python-cffi[${PYTHON_USEDEP}]"
RDEPEND="
	${DEPEND}
	${BDEPEND}
	!dev-python/pycrypto"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD, Public Domain"
KEYWORDS="*"

S="${WORKDIR}/pycryptodome-3.10.1"

python_prepare_all() {
	# Parallel make fixes
	#  Multiple targets were compiling the same file, setuptools doesn't
	#  understand this and you get race conditions where a file gets
	#  overwritten while it's linking. This makes the files look like separate
	#  files so this race won't happen
	ln src/blowfish.c src/blowfish_eks.c || die
	ln src/mont.c src/mont_math.c || die
	sed -i -e '/EKS/,+1s/blowfish.c/blowfish_eks.c/' \
		-e '/Math._modexp/,+2s/mont.c/mont_math.c/' setup.py || die
	# System libtomcrypt patch
	sed -i -e '/libtom/,+2s/py_limited_api=True/py_limited_api=True, extra_link_args=["-ltomcrypt"]/g' \
		-e "s|, 'src/libtom/'||g" setup.py || die
	sed -i -e 's|"libtom/tomcrypt_des.c"|<tomcrypt.h>|' src/DES.c || die
	rm -r src/libtom || die
	distutils-r1_python_prepare_all
}
