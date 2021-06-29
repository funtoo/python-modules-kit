# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/0e/75/92eed8e2ae8cd78f03c8ab9faf26e561482f3453a6f271a81e792178dd54/importlib_metadata-4.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_metadata-compat )
	$(python_gen_cond_dep '
	>=dev-python/configparser-3.5[${PYTHON_USEDEP}]
	dev-python/contextlib2[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	' -2
	)"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/importlib_metadata-4.6.0"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
