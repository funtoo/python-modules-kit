# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( pypy3 python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python/importlib_resources https://pypi.org/project/importlib-resources/"
SRC_URI="https://files.pythonhosted.org/packages/6b/93/cdde2242712d0c0fc9af6f601039bcbc541d71c607099eb00afda8984dc4/importlib_resources-5.11.1.tar.gz -> importlib_resources-5.11.1.tar.gz
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
S="${WORKDIR}/importlib_resources-5.11.1"

distutils_enable_sphinx docs dev-python/rst-linker dev-python/jaraco-packaging
