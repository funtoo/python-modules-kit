# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fancy PyPI READMEs with Hatch"
HOMEPAGE=" https://pypi.org/project/hatch-fancy-pypi-readme/"
SRC_URI="https://files.pythonhosted.org/packages/4e/ab/9b48589d6e3a2f72cc1e8f5221c28ff28fcdf116dbbd6e9beb946054212d/hatch_fancy_pypi_readme-22.8.0.tar.gz -> hatch_fancy_pypi_readme-22.8.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep '
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	' python3_7
	)"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatch_fancy_pypi_readme-22.8.0"