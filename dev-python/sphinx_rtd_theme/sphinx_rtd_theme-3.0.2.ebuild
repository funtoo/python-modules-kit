# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="Read the Docs theme for Sphinx"
HOMEPAGE="https://github.com/readthedocs/sphinx_rtd_theme https://pypi.org/project/sphinx-rtd-theme/"
SRC_URI="https://files.pythonhosted.org/packages/91/44/c97faec644d29a5ceddd3020ae2edffa69e7d00054a8c7a6021e82f20335/sphinx_rtd_theme-3.0.2.tar.gz -> sphinx_rtd_theme-3.0.2.tar.gz
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
S="${WORKDIR}/sphinx_rtd_theme-3.0.2"