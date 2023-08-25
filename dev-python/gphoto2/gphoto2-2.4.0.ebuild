# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE=" https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/6c/f1/eaf5075110e6464c5d649d44c6238c6f8f6c23f61166d3663e1048599ea4/gphoto2-2.4.0.tar.gz -> gphoto2-2.4.0.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.4.0"