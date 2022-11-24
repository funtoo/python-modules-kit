# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/PyCQA/pyflakes https://pypi.org/project/pyflakes/"
SRC_URI="https://files.pythonhosted.org/packages/4d/e5/e0d83a25b307ae3d75be40faf72e5d2f1c7bff0534c732deb252e3f86479/pyflakes-3.0.0.tar.gz -> pyflakes-3.0.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-3.0.0"