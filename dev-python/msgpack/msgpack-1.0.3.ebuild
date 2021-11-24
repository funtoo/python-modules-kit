# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="MessagePack (de)serializer for Python"
HOMEPAGE="https://msgpack.org
	https://github.com/msgpack/msgpack-python/
	https://pypi.org/project/msgpack/"
SRC_URI="https://files.pythonhosted.org/packages/61/3c/2206f39880d38ca7ad8ac1b28d2d5ca81632d163b2d68ef90e46409ca057/msgpack-1.0.3.tar.gz"

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