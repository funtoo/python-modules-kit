# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Package used for parsing and generating iCalendar files (RFC 2445)"
HOMEPAGE="https://github.com/collective/icalendar"
SRC_URI="https://files.pythonhosted.org/packages/42/cb/7b7d090a7e3e962f3ec0a2a75f65e04f74013cfab434b4bcefab882beee7/icalendar-5.0.5.tar.gz -> icalendar-5.0.5.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/icalendar-5.0.5"

distutils_enable_sphinx docs
python_prepare_all() {
	# reset conf.py to not read version from an installed instance
	sed -e "s:pkg_resources.get_distribution('icalendar').version:'${PV}':" \
		-i docs/conf.py || die
	distutils-r1_python_prepare_all
}
