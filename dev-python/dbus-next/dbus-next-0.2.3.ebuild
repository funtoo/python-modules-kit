# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A zero-dependency DBus library for Python with asyncio support"
HOMEPAGE="https://github.com/altdesktop/python-dbus-next https://pypi.org/project/dbus-next/"
SRC_URI="https://files.pythonhosted.org/packages/ce/45/6a40fbe886d60a8c26f480e7d12535502b5ba123814b3b9a0b002ebca198/dbus_next-0.2.3.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/dbus_next-0.2.3"