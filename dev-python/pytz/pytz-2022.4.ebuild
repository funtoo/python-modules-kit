# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )
PYTHON_REQ_USE="threads(+)"

inherit distutils-r1

DESCRIPTION="World timezone definitions for Python"
HOMEPAGE="https://pythonhosted.org/pytz/ https://pypi.org/project/pytz/"
SRC_URI="https://files.pythonhosted.org/packages/31/da/2d48d3499b59c7f3c5d5e1c79fcee5537c320c8ab7b7a0cd2db578bc34b3/pytz-2022.4.tar.gz -> pytz-2022.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	sys-libs/timezone-data"
DEPEND="${RDEPEND}
	app-arch/unzip"

src_prepare() {
	default
	# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
	sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
}

python_test() {
	"${EPYTHON}" pytz/tests/test_tzinfo.py -v || die "Tests fail with ${EPYTHON}"
}

post_src_install() {
	# Remove all bundled zoneinfo data:
	find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}