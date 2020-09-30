# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/16/2a/79c169c92d95db1ca015c481611b78f5255ef66f8ad8f40276cdcd2e5b68/isort-5.5.4.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "/tests.*,$/d" -i setup.py
	sed -E "N;s/,\n 'tests.*\]/\]/" -i setup.py
	default
}