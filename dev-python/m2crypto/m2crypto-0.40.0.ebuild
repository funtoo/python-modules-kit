# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1 toolchain-funcs

DESCRIPTION="A Python crypto and SSL toolkit"
HOMEPAGE="https://gitlab.com/m2crypto/m2crypto https://pypi.org/project/M2Crypto/"
SRC_URI="https://files.pythonhosted.org/packages/10/cb/428b45e922e0b3285069d892c1e9152421292e231a7fab2fa9ef4317541c/M2Crypto-0.40.0.tar.gz -> M2Crypto-0.40.0.tar.gz
"

DEPEND=""
RDEPEND="
	libressl? ( dev-libs/libressl:0= )
	!libressl? ( dev-libs/openssl:0= )
	virtual/python-typing[$PYTHON_USEDEP]"
BDEPEND="
	>=dev-lang/swig-2.0.9"
IUSE="libressl"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/M2Crypto-0.40.0"

swig_define() {
	local x
	for x; do
		if tc-cpp-is-true "defined(${x})"; then
			SWIG_FEATURES+=" -D${x}"
		fi
	done
}
python_compile() {
	# setup.py looks at platform.machine() to determine swig options.
	# For exotic ABIs, we need to give swig a hint.
	local -x SWIG_FEATURES=

	# https://bugs.gentoo.org/617946
	swig_define __ILP32__

	# https://bugs.gentoo.org/674112
	swig_define __ARM_PCS_VFP

	distutils-r1_python_compile --openssl="${ESYSROOT}"/usr
}
python_test() {
	esetup.py test
}
