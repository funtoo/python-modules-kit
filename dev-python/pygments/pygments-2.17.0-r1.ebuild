# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Pygments is a syntax highlighting package written in Python."
HOMEPAGE=" https://pypi.org/project/Pygments/"
SRC_URI="https://files.pythonhosted.org/packages/e1/d8/a025e9be97bb9066e011b3d5e37bf67678002c03598d0781830e5660a43a/pygments-2.17.0.tar.gz -> pygments-2.17.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pygments-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pygments-2.17.0"