# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1

DESCRIPTION="Python library for handling TOML files"
HOMEPAGE="https://github.com/uiri/toml"
SRC_URI="https://files.pythonhosted.org/packages/0e/e8/1aa958599e5326b690a31334112da68a9b75e7563879e2c5103ca219d30a/toml-0.9.6.tar.gz -> toml-0.9.6.tar.gz"
IUSE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

DOCS=( README.rst )