# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ pypy3 )
inherit distutils-r1

DESCRIPTION="A python utility/library to sort imports"
HOMEPAGE="https://pypi.org/project/isort/"
SRC_URI="https://files.pythonhosted.org/packages/1c/28/b382d1656ac0ee4cef4bf579b13f9c6c813bff8a5cb5996669592c8c75fa/isort-6.0.0.tar.gz -> isort-6.0.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools"

src_prepare() {
	sed -E "/tests.*,$/d" -i setup.py
	sed -E "N;s/,\n 'tests.*\]/\]/" -i setup.py
	default
}