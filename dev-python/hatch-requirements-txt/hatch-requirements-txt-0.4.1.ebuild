# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Hatchling plugin to read project dependencies from requirements.txt"
HOMEPAGE=" https://pypi.org/project/hatch-requirements-txt/"
SRC_URI="https://files.pythonhosted.org/packages/7c/04/3703d3caa354fd7148a5453724de70577a6010234d1e1f3ff6b98a4d3242/hatch_requirements_txt-0.4.1.tar.gz -> hatch_requirements_txt-0.4.1.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/hatch_requirements_txt-0.4.1"