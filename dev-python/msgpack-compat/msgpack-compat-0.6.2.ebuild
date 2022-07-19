# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="MessagePack (de)serializer for Python"
HOMEPAGE="https://msgpack.org
	https://github.com/msgpack/msgpack-python/
	https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/74/0a/de673c1c987f5779b65ef69052331ec0b0ebd22958bda77a8284be831964/msgpack-0.6.2.tar.gz -> msgpack-0.6.2.tar.gz"
S="$WORKDIR/msgpack-$PV"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="*"
IUSE="+native-extensions test"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	native-extensions? (
		$(python_gen_cond_dep '>=dev-python/cython-0.16[${PYTHON_USEDEP}]' 'python*')
	)
	test? (	dev-python/six[${PYTHON_USEDEP}] )
"

distutils_enable_tests pytest

python_prepare_all() {
	# Remove pre-generated cython files
	rm msgpack/{_packer,_unpacker,_cmsgpack}.pyx || die

	if ! use native-extensions ; then
		sed -i -e "/have_cython/s:True:False:" setup.py || die
	fi
	distutils-r1_python_prepare_all
}