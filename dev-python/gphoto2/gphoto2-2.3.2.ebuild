# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="https://github.com/jim-easterbrook/python-gphoto2 https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/7f/ef/0394be9c42ee664c3255128cd6b55ef429e969681d33609555fc523da454/gphoto2-2.3.2.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/gphoto2-2.3.2"