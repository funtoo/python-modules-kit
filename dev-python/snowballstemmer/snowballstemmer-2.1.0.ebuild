# Distributed under the terms of the GNU General Public License v2

EAPI=5

PYTHON_COMPAT=( python2+ pypy{,3} )

inherit distutils-r1

DESCRIPTION="Stemmer algorithms generated from Snowball algorithms"
HOMEPAGE="https://github.com/shibukawa/snowball_py https://pypi.org/project/snowballstemmer/"
SRC_URI="https://files.pythonhosted.org/packages/a3/3d/d305c9112f35df6efb51e5acd0db7009b74d86f35580e033451b5994a0a9/snowballstemmer-2.1.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"
IUSE=""