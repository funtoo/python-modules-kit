# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MessagePack serializer"
HOMEPAGE=" https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/dc/a1/eba11a0d4b764bc62966a565b470f8c6f38242723ba3057e9b5098678c30/msgpack-1.0.5.tar.gz -> msgpack-1.0.5.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/msgpack-compat )"
IUSE="native-extensions python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/msgpack-1.0.5"

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}
