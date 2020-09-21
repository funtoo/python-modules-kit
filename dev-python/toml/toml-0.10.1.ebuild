# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python library for handling TOML files"
HOMEPAGE="https://github.com/uiri/toml"
SRC_URI="https://files.pythonhosted.org/packages/da/24/84d5c108e818ca294efe7c1ce237b42118643ce58a14d2462b3b2e3800d5/toml-0.10.1.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )