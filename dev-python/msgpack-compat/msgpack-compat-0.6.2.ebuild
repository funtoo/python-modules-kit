# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="MessagePack serializer"
HOMEPAGE=" https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/74/0a/de673c1c987f5779b65ef69052331ec0b0ebd22958bda77a8284be831964/msgpack-0.6.2.tar.gz -> msgpack-0.6.2.tar.gz
"

DEPEND=""
RDEPEND="!dev-python/msgpack-1.0.7 !<=dev-python/msgpack-1.0.5 "
IUSE="native-extensions"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/msgpack-0.6.2"

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}


post_src_install() {
	rm -rf ${D}/usr/bin
}