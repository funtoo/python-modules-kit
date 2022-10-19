# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://pythonhosted.org/pytz https://pypi.org/project/pytz/"
SRC_URI="https://files.pythonhosted.org/packages/fe/dd/182cc5ed8e64a0d6d6c34fd27391041d542270000825410d294bd6902207/pytz-2022.5.tar.gz -> pytz-2022.5.tar.gz
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
S="${WORKDIR}/pytz-2022.5"

src_prepare() {
		default
		# configure the source code to grab zoneinfo files from /usr/share/zoneinfo by default:
		sed -i -e "/zoneinfo_dir = os.environ.get/s:None:'/usr/share/zoneinfo':" $S/pytz/__init__.py || die
}
post_src_install() {
		# Remove all bundled zoneinfo data:
		find "$D" -type d -name zoneinfo -exec rm -rf {} \; 2>/dev/null
}
