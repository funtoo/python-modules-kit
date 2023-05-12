# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/0b/1f/9de392c2b939384e08812ef93adf37684ec170b5b6e7ea302d9f163c2ea0/importlib_metadata-6.6.0.tar.gz -> importlib_metadata-6.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_metadata-compat )
	$(python_gen_cond_dep '
	' -3
	)
	>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	dev-python/zipp[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/importlib_metadata-6.6.0"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
