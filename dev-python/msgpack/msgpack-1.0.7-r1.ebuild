# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MessagePack serializer"
HOMEPAGE=" https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/c2/d5/5662032db1571110b5b51647aed4b56dfbd01bfae789fa566a2be1f385d1/msgpack-1.0.7.tar.gz -> msgpack-1.0.7.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/msgpack-compat )"
IUSE="native-extensions python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="next"
S="${WORKDIR}/msgpack-1.0.7"

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}
