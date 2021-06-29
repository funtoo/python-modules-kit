# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="https://github.com/python/importlib_resources https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/e1/bf/b40e6ecb611fa3be5b0ecae7b37ae1fa0d8df3146477ec0a554e8f62c976/importlib_resources-3.3.1.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/importlib_resources-4 
	$(python_gen_cond_dep 'dev-python/zipp[${PYTHON_USEDEP}]' pypy3 python3_{6,7})"
BDEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_resources-3.3.1"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging


post_src_install() {
	rm -rf ${D}/usr/bin
}