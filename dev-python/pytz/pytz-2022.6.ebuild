# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://pythonhosted.org/pytz https://pypi.org/project/pytz/"
SRC_URI="https://files.pythonhosted.org/packages/76/63/1be349ff0a44e4795d9712cc0b2d806f5e063d4d34631b71b832fac715a8/pytz-2022.6.tar.gz -> pytz-2022.6.tar.gz
"

DEPEND="
	sys-libs/timezone-data
	app-arch/unzip"
RDEPEND="
	sys-libs/timezone-data
	dev-python/setuptools[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pytz-2022.6"

src_prepare() {
		default
		# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
		sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
}
post_src_install() {
		# Remove all bundled zoneinfo data:
		find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}
