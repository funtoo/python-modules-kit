# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3+ )
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="https://github.com/python/importlib_resources https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/9d/cf/64d938a85a0c0c0a04e29de3323d457589d650fa26694de787367151b31d/importlib_resources-5.7.0.tar.gz
"

DEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_resources-compat )
	$(python_gen_cond_dep '
	dev-python/zipp[${PYTHON_USEDEP}]
	' -3 pypy3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_resources-5.7.0"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
