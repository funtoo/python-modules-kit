# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/03/0a/4769cc0557fbe690f86bc4c183faa116f1050e5c9296f1b7b5806f063cdb/more-itertools-8.8.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/more-itertools-8.8.0"