# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="None https://pypi.org/project/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/7f/c0/c601ea7811f422700ef809f167683899cdfddec5aa3f83597edf97349962/arrow-1.2.3.tar.gz -> arrow-1.2.3.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/arrow-compat )
	dev-python/python-dateutil[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/arrow-1.2.3"