# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/tobgu/pyrsistent/ https://pypi.org/project/pyrsistent/"
SRC_URI="https://files.pythonhosted.org/packages/19/fb/845ff3b943ede86c69e62c9b47c0e796838552de38fc93d2048fc65ba161/pyrsistent-0.19.1.tar.gz -> pyrsistent-0.19.1.tar.gz
"

DEPEND=""
RDEPEND="
	python_targets_python2_7? ( dev-python/pyrsistent-compat )
	dev-python/six[${PYTHON_USEDEP}]"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/pyrsistent-0.19.1"