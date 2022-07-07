# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://github.com/tobgu/pyrsistent/ https://pypi.org/project/pyrsistent/"
SRC_URI="https://files.pythonhosted.org/packages/42/ac/455fdc7294acc4d4154b904e80d964cc9aae75b087bbf486be04df9f2abd/pyrsistent-0.18.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pyrsistent-compat )
	dev-python/six[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyrsistent-0.18.1"