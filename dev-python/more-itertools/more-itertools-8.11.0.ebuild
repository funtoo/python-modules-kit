# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="More routines for operating on iterables, beyond itertools"
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/14/77/a496c86b4bf9328269b65dc4d97f127cc78af59539a13b49631b36896234/more-itertools-8.11.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/more-itertools-8.11.0"