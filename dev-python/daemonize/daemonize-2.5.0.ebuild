# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2+ pypy3 )

inherit distutils-r1 python-r1

DESCRIPTION="daemonize is a library for writing system daemons in Python"
HOMEPAGE="https://github.com/thesharp/daemonize"
SRC_URI="https://files.pythonhosted.org/packages/8c/20/96f7dbc23812cfe4cf479c87af3e4305d0d115fd1fffec32ddeee7b9c82b/daemonize-2.5.0.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND=">=dev-python/setuptools-33.1.1[${PYTHON_USEDEP}]"