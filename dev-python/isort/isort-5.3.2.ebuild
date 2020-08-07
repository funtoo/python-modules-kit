# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/eb/5e/cb23d644e7371c03667b1d54321f170758bb8f9ef98bdc4635684f172faf/isort-5.3.2.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "N;s/,\n 'tests'\]/\]/" -i setup.py
	default
}