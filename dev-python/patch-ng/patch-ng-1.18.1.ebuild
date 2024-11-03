# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library to parse and apply unified diffs."
HOMEPAGE="https://github.com/conan-io/python-patch https://pypi.org/project/patch-ng/"
SRC_URI="https://files.pythonhosted.org/packages/ee/c0/53a2f017ac5b5397a7064c2654b73c3334ac8461315707cbede6c12199eb/patch-ng-1.18.1.tar.gz -> patch-ng-1.18.1.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/patch-ng-1.18.1"