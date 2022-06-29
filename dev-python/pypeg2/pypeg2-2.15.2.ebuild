# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="An intrinsic PEG Parser-Interpreter for Python"
HOMEPAGE="https://pypi.org/project/pyPEG2/ https://fdik.org/pyPEG/"
SRC_URI="https://files.pythonhosted.org/packages/f9/bd/10398e2c2d2070cc8a9c7153abfbd4ddb2895a2c52a32722ab8689e0cc7d/pyPEG2-2.15.2.tar.gz
"

DEPEND=""
RDEPEND="dev-python/lxml[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="GPL-2"
KEYWORDS="*"
S="${WORKDIR}/pyPEG2-2.15.2"