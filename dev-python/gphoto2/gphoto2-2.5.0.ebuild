# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE=" https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/d9/e0/03167246c2d32d2b646cbd7f1bf424e3e0b52c319d5cc2d72da3998ed141/gphoto2-2.5.0.tar.gz -> gphoto2-2.5.0.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.5.0"