# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python/importlib_metadata https://pypi.org/project/importlib-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/40/a2/0d11187bdde4237a2f5413f3dd47bdce4d198215392cf6c69945e89c6797/importlib_metadata-2.1.1.tar.gz -> importlib_metadata-2.1.1.tar.gz
"

DEPEND=""
RDEPEND="!<=dev-python/importlib_metadata-3.4.0-r1 
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/zipp[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/configparser-3.5[${PYTHON_USEDEP}]
	dev-python/contextlib2[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	' -2
	)"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_metadata-2.1.1"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'


post_src_install() {
	rm -rf ${D}/usr/bin
}