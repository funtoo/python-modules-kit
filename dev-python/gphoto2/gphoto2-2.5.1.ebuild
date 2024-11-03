# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="None https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/39/da/684354f7f0fc64134c9ea94df74de846aa225996e9ace97af8cd7058671b/gphoto2-2.5.1.tar.gz -> gphoto2-2.5.1.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.5.1"