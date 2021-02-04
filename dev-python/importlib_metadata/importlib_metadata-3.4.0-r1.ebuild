# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/0c/89/412afa5f0018dccf637c2d25b9d6a41623cd22beef6797c0d67a2082ccfe/importlib_metadata-3.4.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/importlib_metadata-compat )
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/zipp[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	>=dev-python/typing-extensions-3.6.4[${PYTHON_USEDEP}]
	' -3
	)
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

S="${WORKDIR}/importlib_metadata-${PV}"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
