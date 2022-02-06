# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Collection of utilities for publishing packages on PyPI"
HOMEPAGE="https://twine.readthedocs.io/ https://pypi.org/project/twine/"
SRC_URI="https://files.pythonhosted.org/packages/d1/3e/ce331d7e215abdc16c53e65f8506bfccf4840ce191b709a37b8c83cc32c7/twine-3.8.0.tar.gz
"

DEPEND="dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="
	dev-python/colorama[${PYTHON_USEDEP}]
	>=dev-python/importlib_metadata-3.6[${PYTHON_USEDEP}]
	>=dev-python/keyring-15.1[${PYTHON_USEDEP}]
	>=dev-python/pkginfo-1.8.1[${PYTHON_USEDEP}]
	>=dev-python/readme_renderer-21.0[${PYTHON_USEDEP}]
	>=dev-python/requests-2.20.0[${PYTHON_USEDEP}]
	>=dev-python/requests-toolbelt-0.8.0[${PYTHON_USEDEP}]
	>=dev-python/rfc3986-1.4.0[${PYTHON_USEDEP}]
	>=dev-python/tqdm-4.14[${PYTHON_USEDEP}]
	>=dev-python/packaging-20[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/twine-3.8.0"

python_prepare_all() {
	distutils-r1_python_prepare_all
	export SETUPTOOLS_SCM_PRETEND_VERSION=${PV}
}
