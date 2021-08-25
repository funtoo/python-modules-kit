# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A built-package format for Python"
HOMEPAGE="https://github.com/pypa/wheel https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/4e/be/8139f127b4db2f79c8b117c80af56a3078cc4824b5b94250c7f81a70e03b/wheel-0.37.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/wheel-0.37.0"

src_prepare() {
	sed -i -e 's:--cov=wheel::g' setup.cfg || die
	# unbundle packaging
	rm -r src/wheel/vendored || die
	sed -i -e 's:\.vendored\.::' src/wheel/*.py || die
	distutils-r1_src_prepare
}
