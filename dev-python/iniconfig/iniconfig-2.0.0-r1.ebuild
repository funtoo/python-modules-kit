# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="brain-dead simple config-ini parsing"
HOMEPAGE=" https://pypi.org/project/iniconfig/"
SRC_URI="https://files.pythonhosted.org/packages/d7/4b/cbd8e699e64a6f16ca3a8220661b5f83792b3017d0f79807cb8708d33913/iniconfig-2.0.0.tar.gz -> iniconfig-2.0.0.tar.gz
"

DEPEND="
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]"
RDEPEND="python_targets_python2_7? ( dev-python/iniconfig-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/iniconfig-2.0.0"

src_prepare() {
	# fix license in pyproject.toml
	sed -i -e 's/license = "MIT"/license = { text = "MIT" }/g' pyproject.toml || die

	distutils-r1_src_prepare
}
