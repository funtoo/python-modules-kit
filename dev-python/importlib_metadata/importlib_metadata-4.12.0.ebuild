# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python/importlib_metadata https://pypi.org/project/importlib-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/1a/16/441080c907df829016729e71d8bdd42d99b9bdde48b01492ed08912c0aa9/importlib_metadata-4.12.0.tar.gz
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
S="${WORKDIR}/importlib_metadata-4.12.0"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
