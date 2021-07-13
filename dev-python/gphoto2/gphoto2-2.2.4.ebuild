# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="https://github.com/jim-easterbrook/python-gphoto2 https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/85/cd/4374911d773a1f5ed5dcb0061f5bd71e6c62c4e96513596b7baba765b58d/gphoto2-2.2.4.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"

IUSE=""
SLOT="0"
LICENSE="GNU GPL"
KEYWORDS="*"

S="${WORKDIR}/gphoto2-2.2.4"