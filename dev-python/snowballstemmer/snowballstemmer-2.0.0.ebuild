# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Stemmer algorithms generated from Snowball algorithms"
HOMEPAGE="https://github.com/shibukawa/snowball_py https://pypi.org/project/snowballstemmer/"
SRC_URI="https://files.pythonhosted.org/packages/21/1b/6b8bbee253195c61aeaa61181bb41d646363bdaa691d0b94b304d4901193/snowballstemmer-2.0.0.tar.gz -> snowballstemmer-2.0.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""