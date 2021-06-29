# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3_{7,8} )
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="https://github.com/python/importlib_resources https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/ac/94/30b82b3a3a7c4f7fd7be1082047cc9a135a10c1bcb0158a2aec20d8fec57/importlib_resources-5.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_resources-compat )
	$(python_gen_cond_dep 'dev-python/zipp[${PYTHON_USEDEP}]' pypy3 python3_{6,7})"
BDEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_resources-5.2.0"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
