# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="Read the Docs theme for Sphinx"
HOMEPAGE="https://github.com/readthedocs/sphinx_rtd_theme https://pypi.org/project/sphinx-rtd-theme/"
SRC_URI="https://files.pythonhosted.org/packages/55/ff/e24d14f397ce07a93d302be444d4da7953294f9b1be99497dc92f800ac7b/sphinx_rtd_theme-3.0.1.tar.gz -> sphinx_rtd_theme-3.0.1.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/sphinxcontrib-jquery[${PYTHON_USEDEP}]
	dev-python/sphinx[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/sphinx_rtd_theme-3.0.1"