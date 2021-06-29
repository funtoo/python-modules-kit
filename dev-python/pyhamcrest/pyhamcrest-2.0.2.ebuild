# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Hamcrest framework for matcher objects"
HOMEPAGE="https://github.com/hamcrest/PyHamcrest"
SRC_URI="https://files.pythonhosted.org/packages/58/05/7b993fabb44ff0b52a90916d96bfd91a65ecf90b8248e72bba325ba8e438/PyHamcrest-2.0.2.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pyhamcrest-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/pyhamcrest-2.0.2"

S="${WORKDIR}/PyHamcrest-${PV}"
