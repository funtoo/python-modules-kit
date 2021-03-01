# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3_{7,8} )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/32/36/a380aecd01d0db4a73f95167906a1f99afdffb965b3cd5e634e124e45436/importlib_resources-5.1.1.tar.gz"

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

S="${WORKDIR}/importlib_resources-${PV}"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
