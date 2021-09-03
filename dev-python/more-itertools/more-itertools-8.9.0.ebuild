# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="More routines for operating on iterables, beyond itertools"
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/e7/79/46de03872e1bb6e02b087d3e42d9077c344fc5aa83c14c641628e809c629/more-itertools-8.9.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/more-itertools-8.9.0"