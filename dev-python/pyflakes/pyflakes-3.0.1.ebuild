# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/PyCQA/pyflakes https://pypi.org/project/pyflakes/"
SRC_URI="https://files.pythonhosted.org/packages/f2/51/506ddcfab10d708e8460554cc1cf37c727a6a2cccbad8dfe57766cfce33c/pyflakes-3.0.1.tar.gz -> pyflakes-3.0.1.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyflakes-3.0.1"