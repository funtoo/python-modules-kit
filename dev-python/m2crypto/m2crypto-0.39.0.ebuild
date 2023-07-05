# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1 toolchain-funcs

DESCRIPTION="A Python crypto and SSL toolkit"
HOMEPAGE="https://gitlab.com/m2crypto/m2crypto https://pypi.org/project/M2Crypto/"
SRC_URI="https://files.pythonhosted.org/packages/16/49/bfeaf55da3378292e40e93319717bb4334400e86c00a57fc52677f11fb65/M2Crypto-0.39.0.tar.gz -> M2Crypto-0.39.0.tar.gz
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
S="${WORKDIR}/M2Crypto-0.39.0"

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
