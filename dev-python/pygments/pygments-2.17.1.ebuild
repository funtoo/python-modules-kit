# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE=" https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/22/04/097cdb7d5c6faee58e31a8a2b63cba2222a52066f734b3fdc713c6f40575/pygments-2.17.1.tar.gz -> pygments-2.17.1.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pygments-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pygments-2.17.1"