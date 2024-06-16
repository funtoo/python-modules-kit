# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python style guide checker"
HOMEPAGE="https://pycodestyle.pycqa.org/ https://pypi.org/project/pycodestyle/"
SRC_URI="https://files.pythonhosted.org/packages/10/56/52d8283e1a1c85695291040192776931782831e21117c84311cbdd63f70c/pycodestyle-2.12.0.tar.gz -> pycodestyle-2.12.0.tar.gz"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/pycodestyle-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pycodestyle-2.12.0"