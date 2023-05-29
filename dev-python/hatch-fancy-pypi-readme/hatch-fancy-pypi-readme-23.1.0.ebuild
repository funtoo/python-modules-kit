# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fancy PyPI READMEs with Hatch"
HOMEPAGE=" https://pypi.org/project/hatch-fancy-pypi-readme/"
SRC_URI="https://files.pythonhosted.org/packages/85/a6/58d585eba4321bf2e7a4d1ed2af141c99d88c1afa4b751926be160f09325/hatch_fancy_pypi_readme-23.1.0.tar.gz -> hatch_fancy_pypi_readme-23.1.0.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatch_fancy_pypi_readme-23.1.0"