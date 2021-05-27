# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/c7/7c/126a8686399ebe256b5e4343ea80b6f2ee91549969da2eef0bb2891b8d24/importlib_metadata-4.2.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_metadata-compat )
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/zipp[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]
	' -3
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_metadata-4.2.0"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
