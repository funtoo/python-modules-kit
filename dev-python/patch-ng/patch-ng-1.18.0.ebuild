# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Library to parse and apply unified diffs."
HOMEPAGE="https://github.com/conan-io/python-patch https://pypi.org/project/patch-ng/"
SRC_URI="https://files.pythonhosted.org/packages/2a/f0/f61a7368ae332d9a45534068c740d4eee4a06ece6cf48af5c3eb9e4bc50e/patch-ng-1.18.0.tar.gz -> patch-ng-1.18.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/patch-ng-1.18.0"