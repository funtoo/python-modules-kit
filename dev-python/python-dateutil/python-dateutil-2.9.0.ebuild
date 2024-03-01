# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ )

inherit distutils-r1

DESCRIPTION="Extensions to the standard Python datetime module"
HOMEPAGE="
	https://dateutil.readthedocs.org/
	https://pypi.org/project/python-dateutil
	https://github.com/dateutil/dateutil/
"
SRC_URI="https://files.pythonhosted.org/packages/d9/77/bd458a2e387e98f71de86dcc2ca2cab64489736004c80bc12b70da8b5488/python-dateutil-2.9.0.tar.gz -> python-dateutil-2.9.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE="test"

RDEPEND="
	>=dev-python/six-1.5[${PYTHON_USEDEP}]
	sys-libs/timezone-data
"
DEPEND="${RDEPEND}
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/freezegun[${PYTHON_USEDEP}]
		dev-python/hypothesis[${PYTHON_USEDEP}]
	)
"

PATCHES=(
	"${FILESDIR}"/0001-zoneinfo-Get-timezone-data-from-system-tzdata.patch
)

python_prepare_all() {
	# don't install zoneinfo tarball
	sed -i '/package_data=/d' setup.py || die

	distutils-r1_python_prepare_all
}

python_test() {
	py.test -v || die "Tests failed under ${EPYTHON}"
}