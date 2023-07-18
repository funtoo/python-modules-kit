# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE=" https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/fd/ca/ffba45e163799fba74af20ea6b5dd1f74e95f3b3c48e2a6239d9155c5eb7/gphoto2-2.3.6.tar.gz -> gphoto2-2.3.6.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/gphoto2-2.3.6"