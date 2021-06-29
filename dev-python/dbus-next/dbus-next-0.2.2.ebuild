# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A zero-dependency DBus library for Python with asyncio support"
HOMEPAGE="https://github.com/altdesktop/python-dbus-next https://pypi.org/project/dbus-next/"
SRC_URI="https://files.pythonhosted.org/packages/cb/fb/5ab0485c6460e39be75e16af95c0e23c2531c1ac5a482fffb9ee7d576e6f/dbus_next-0.2.2.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/dbus_next-0.2.2"