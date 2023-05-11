# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library to parse and apply unified diffs."
HOMEPAGE="https://github.com/conan-io/python-patch https://pypi.org/project/patch-ng/"
SRC_URI="https://files.pythonhosted.org/packages/c1/b2/ad3cd464101435fdf642d20e0e5e782b4edaef1affdf2adfc5c75660225b/patch-ng-1.17.4.tar.gz -> patch-ng-1.17.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/patch-ng-1.17.4"