# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/jaraco/zipp https://pypi.org/project/zipp/"
SRC_URI="https://files.pythonhosted.org/packages/cc/3c/3e8c69cd493297003da83f26ccf1faea5dd7da7892a0a7c965ac3bcba7bf/zipp-3.8.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/zipp-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/zipp-3.8.0"