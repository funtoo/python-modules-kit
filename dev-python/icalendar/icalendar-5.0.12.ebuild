# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Package used for parsing and generating iCalendar files (RFC 2445)"
HOMEPAGE="https://github.com/collective/icalendar"
SRC_URI="https://files.pythonhosted.org/packages/40/e7/01b5dd6623fda765e6edd605ef551a44071d3034eb4a252c7f61fb24323b/icalendar-5.0.12.tar.gz -> icalendar-5.0.12.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/icalendar-5.0.12"

distutils_enable_sphinx docs
python_prepare_all() {
	# reset conf.py to not read version from an installed instance
	sed -e "s:pkg_resources.get_distribution('icalendar').version:'${PV}':" \
		-i docs/conf.py || die
	distutils-r1_python_prepare_all
}
