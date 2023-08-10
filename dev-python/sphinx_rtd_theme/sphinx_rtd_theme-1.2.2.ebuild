# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy )
inherit distutils-r1

DESCRIPTION="Read the Docs theme for Sphinx"
HOMEPAGE="https://github.com/readthedocs/sphinx_rtd_theme https://pypi.org/project/sphinx-rtd-theme/"
SRC_URI="https://files.pythonhosted.org/packages/66/86/7b2c3d15f44cb3ea2e1c54481494121d755081aa57a8076de3fa2be4d587/sphinx_rtd_theme-1.2.2.tar.gz -> sphinx_rtd_theme-1.2.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/sphinx_rtd_theme-1.2.2"