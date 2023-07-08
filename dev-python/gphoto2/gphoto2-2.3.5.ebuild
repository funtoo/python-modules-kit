# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE=" https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/91/63/8c83e64614e50982368b6232a8d1d272883ca2b8610618cb0cd70bc16721/gphoto2-2.3.5.tar.gz -> gphoto2-2.3.5.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.3.5"