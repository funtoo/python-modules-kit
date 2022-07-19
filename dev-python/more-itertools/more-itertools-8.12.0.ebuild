# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/more-itertools/"
SRC_URI="https://files.pythonhosted.org/packages/dc/b5/c216ffeace7b89b7387fe08e1b39a07c6da38ea82c60e2e630dd5883813b/more-itertools-8.12.0.tar.gz -> more-itertools-8.12.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/more-itertools-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/more-itertools-8.12.0"