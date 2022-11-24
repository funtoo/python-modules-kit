# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/collective/icalendar https://pypi.org/project/icalendar/"
SRC_URI="https://files.pythonhosted.org/packages/a6/3f/65e3e53ec63a75c1a3c6e50d6ba434c127767803984342fe02b27da6da79/icalendar-5.0.3.tar.gz -> icalendar-5.0.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/python-dateutil[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/icalendar-5.0.3"

distutils_enable_sphinx docs
python_prepare_all() {
	# reset conf.py to not read version from an installed instance
	sed -e "s:pkg_resources.get_distribution('icalendar').version:'${PV}':" \
		-i docs/conf.py || die
	distutils-r1_python_prepare_all
}
