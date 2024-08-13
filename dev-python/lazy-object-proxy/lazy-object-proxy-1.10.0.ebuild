# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A fast and thorough lazy object proxy"
HOMEPAGE="https://github.com/ionelmc/python-lazy-object-proxy https://python-lazy-object-proxy.readthedocs.org https://pypi.org/project/lazy-object-proxy/"
SRC_URI="https://files.pythonhosted.org/packages/2c/f0/f02e2d150d581a294efded4020094a371bbab42423fe78625ac18854d89b/lazy-object-proxy-1.10.0.tar.gz -> lazy-object-proxy-1.10.0.tar.gz
"

DEPEND=""
RDEPEND="test? ( dev-python/pytest[${PYTHON_USEDEP}] )"
IUSE="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/lazy-object-proxy-1.10.0"