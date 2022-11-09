# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/wheel https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/2e/c6/af5def6796940a8bd602d815f7f495f32d833c81b38d055ca0b23ab3b804/wheel-0.38.3.tar.gz -> wheel-0.38.3.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/wheel-compat )
	dev-python/packaging[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.38.3"

src_prepare() {
	sed -e 's:--cov=wheel::g' -i setup.cfg || die

	# unbundle packaging
	rm -r src/wheel/vendored || die
	sed -i -e 's:\.vendored\.::' src/wheel/*.py || die

	distutils-r1_src_prepare
}
