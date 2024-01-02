# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Fancy PyPI READMEs with Hatch"
HOMEPAGE=" https://pypi.org/project/hatch-fancy-pypi-readme/"
SRC_URI="https://files.pythonhosted.org/packages/b4/c2/c9094283a07dd96c5a8f7a5f1910259d40d2e29223b95dd875a6ca13b58f/hatch_fancy_pypi_readme-24.1.0.tar.gz -> hatch_fancy_pypi_readme-24.1.0.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7)"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatch_fancy_pypi_readme-24.1.0"