# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/4b/c6/892dd1ad3b6b8d0b33f8ad51255042e5926e4c93b3f0307005d4bc5596a4/isort-5.4.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "N;s/,\n 'tests'\]/\]/" -i setup.py
	default
}