# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 pypy )
inherit distutils-r1

DESCRIPTION="Backport of pathlib-compatible object wrapper for zip files"
HOMEPAGE="https://github.com/jaraco/zipp https://pypi.org/project/zipp/"
SRC_URI="https://files.pythonhosted.org/packages/76/e4/b0f1010d29a61e3527667b214498da73299f747dd25ad0fd135705170716/zipp-3.5.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/zipp-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/zipp-3.5.1"