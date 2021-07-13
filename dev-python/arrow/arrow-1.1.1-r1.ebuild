# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Better dates and times for Python"
HOMEPAGE="https://arrow.readthedocs.io https://pypi.org/project/arrow/"
SRC_URI="https://files.pythonhosted.org/packages/94/39/b5bb573821d6784640c227ccbd72fa192f7542fa0f68589fd51757046030/arrow-1.1.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/arrow-compat )
	dev-python/python-dateutil[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/arrow-1.1.1"