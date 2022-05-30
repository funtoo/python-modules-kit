# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="https://github.com/jim-easterbrook/python-gphoto2 https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/ef/8d/9121798c88f6f38f31fc7170c194b205d2d98db097be27ba0db6757d12d3/gphoto2-2.3.3.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/gphoto2-2.3.3"