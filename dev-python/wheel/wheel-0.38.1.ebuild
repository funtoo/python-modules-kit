# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pypa/wheel https://pypi.org/project/wheel/"
SRC_URI="https://files.pythonhosted.org/packages/7a/b0/29c0c8c6f8cebeb0de4c17bc44365cba0b35cb4246e4a27a7e12ecf92d73/wheel-0.38.1.tar.gz -> wheel-0.38.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/packaging[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/wheel-0.38.1"

src_prepare() {
	sed -e 's:--cov=wheel::g' -i setup.cfg || die

	# unbundle packaging
	rm -r src/wheel/vendored || die
	sed -i -e 's:\.vendored\.::' src/wheel/*.py || die

	distutils-r1_src_prepare
}
