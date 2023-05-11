# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy )
inherit distutils-r1

DESCRIPTION="Read/rewrite/write Python ASTs"
HOMEPAGE="https://pypi.org/project/astor/"
SRC_URI="https://files.pythonhosted.org/packages/5a/21/75b771132fee241dfe601d39ade629548a9626d1d39f333fde31bc46febe/astor-0.8.1.tar.gz -> astor-0.8.1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/astor-0.8.1"

python_prepare_all() {
	#avoid file collisions picked up by the eclass
	sed -e s":find_packages():find_packages(exclude=['tests']):" -i setup.py || die
	distutils-r1_python_prepare_all
}
python_test() {
	"${PYTHON}" -m unittest discover || die "tests failed under ${EPYTHON}"
}
