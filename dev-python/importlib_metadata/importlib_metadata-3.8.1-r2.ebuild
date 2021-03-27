# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Read metadata from Python packages"
HOMEPAGE="https://importlib-metadata.readthedocs.io/"
SRC_URI="https://files.pythonhosted.org/packages/64/bc/1b4b48fc8ec1375717736f6dfb06e6a57972b1dd4ed16d5e9463c880e7b0/importlib_metadata-3.8.1.tar.gz
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

S="${WORKDIR}/importlib_metadata-3.8.1"

distutils_enable_sphinx "${PN}/docs" '>=dev-python/rst-linker-1.9'
