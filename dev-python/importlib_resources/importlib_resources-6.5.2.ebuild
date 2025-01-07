# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3+ )
inherit distutils-r1

DESCRIPTION="Read resources from Python packages"
HOMEPAGE="None https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/cf/8c/f834fbf984f691b4f7ff60f50b514cc3de5cc08abfc3295564dd89c5e2e7/importlib_resources-6.5.2.tar.gz -> importlib_resources-6.5.2.tar.gz
"

DEPEND="
	dev-python/toml[${PYTHON_USEDEP}]
	>=dev-python/setuptools_scm-3.4.1[${PYTHON_USEDEP}]"
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_resources-compat )
	$(python_gen_cond_dep 'dev-python/zipp[${PYTHON_USEDEP}]' -3 pypy3)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_resources-6.5.2"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
