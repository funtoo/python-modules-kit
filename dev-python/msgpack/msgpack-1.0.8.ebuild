# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="MessagePack serializer"
HOMEPAGE=" https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/08/4c/17adf86a8fbb02c144c7569dc4919483c01a2ac270307e2d59e1ce394087/msgpack-1.0.8.tar.gz -> msgpack-1.0.8.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/msgpack-compat )"
IUSE="native-extensions python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="next"
S="${WORKDIR}/msgpack-1.0.8"

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}
