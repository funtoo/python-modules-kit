# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/python/importlib_metadata https://pypi.org/project/importlib-metadata/"
SRC_URI="https://files.pythonhosted.org/packages/c2/84/ab374b7e05fbdeecf867294660ac0fdb23aa286aca68a31d587f67d181ad/importlib_metadata-6.3.0.tar.gz -> importlib_metadata-6.3.0.tar.gz
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
S="${WORKDIR}/importlib_metadata-6.3.0"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'