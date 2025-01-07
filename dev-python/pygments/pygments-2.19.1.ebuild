# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE="None https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz -> pygments-2.19.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pygments-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pygments-2.19.1"