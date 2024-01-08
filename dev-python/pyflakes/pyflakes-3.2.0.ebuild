# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Passive checker for Python programs"
HOMEPAGE="https://github.com/PyCQA/pyflakes
https://pypi.org/project/pyflakes/
"
SRC_URI="https://files.pythonhosted.org/packages/57/f9/669d8c9c86613c9d568757c7f5824bd3197d7b1c6c27553bc5618a27cce2/pyflakes-3.2.0.tar.gz -> pyflakes-3.2.0.tar.gz"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-3.2.0"