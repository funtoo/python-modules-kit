# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A fast and thorough lazy object proxy"
HOMEPAGE="https://github.com/ionelmc/python-lazy-object-proxy https://python-lazy-object-proxy.readthedocs.org https://pypi.org/project/lazy-object-proxy/"
SRC_URI="https://files.pythonhosted.org/packages/20/c0/8bab72a73607d186edad50d0168ca85bd2743cfc55560c9d721a94654b20/lazy-object-proxy-1.9.0.tar.gz -> lazy-object-proxy-1.9.0.tar.gz
"

DEPEND=""
RDEPEND="test? ( dev-python/pytest[${PYTHON_USEDEP}] )"

IUSE="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/lazy-object-proxy-1.9.0"