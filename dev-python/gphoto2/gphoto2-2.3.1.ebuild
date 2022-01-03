# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="https://github.com/jim-easterbrook/python-gphoto2 https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/77/0c/c8f9800a4d57fee18d2f3546097c4a08642ad574ac5f760633be8de50f04/gphoto2-2.3.1.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/gphoto2-2.3.1"