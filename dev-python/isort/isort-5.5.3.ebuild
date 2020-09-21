# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/a4/ca/629578a00b4e292f55fca902c25fb78fb7ea851a8b5e41c03eb0e45db734/isort-5.5.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "/tests.*,$/d" -i setup.py
	sed -E "N;s/,\n 'tests.*\]/\]/" -i setup.py
	default
}