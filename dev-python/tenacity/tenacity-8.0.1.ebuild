# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Retry code until it succeeds"
HOMEPAGE="https://github.com/jd/tenacity https://pypi.org/project/tenacity/"
SRC_URI="https://files.pythonhosted.org/packages/2c/f5/04748914f5c78f7418b803226bd56cdddd70ac369b936b3e24f5158017f1/tenacity-8.0.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/tenacity-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/tenacity-8.0.1"