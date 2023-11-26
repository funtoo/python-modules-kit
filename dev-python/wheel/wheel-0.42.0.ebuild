# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
DISTUTILS_USE_PEP517="flit"
inherit distutils-r1

DESCRIPTION="reference implementation of the Python wheel packaging standard, as defined in PEP 427"
HOMEPAGE=" https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/b0/b4/bc2baae3970c282fae6c2cb8e0f179923dceb7eaffb0e76170628f9af97b/wheel-0.42.0.tar.gz -> wheel-0.42.0.tar.gz"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/wheel-compat )
	dev-python/packaging[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.42.0"

src_prepare() {
	# unbundle packaging
	rm -r src/wheel/vendored || die
	sed -i -e 's:\.vendored\.::' src/wheel/*.py || die
	sed -i -e 's:wheel\.vendored\.::' tests/*.py || die

	distutils-r1_src_prepare
}
