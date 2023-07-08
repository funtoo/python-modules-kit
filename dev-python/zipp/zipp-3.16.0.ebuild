# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp https://pypi.org/project/zipp/"
SRC_URI="https://files.pythonhosted.org/packages/52/9a/d93b483b9a744e7f71b311ee9bb5a228f6846219ceb5d6dbcb3eddcd1932/zipp-3.16.0.tar.gz -> zipp-3.16.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/zipp-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/zipp-3.16.0"