# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python interface to libgphoto2"
HOMEPAGE="https://github.com/jim-easterbrook/python-gphoto2 https://pypi.org/project/gphoto2/"
SRC_URI="https://files.pythonhosted.org/packages/03/e8/d62ad28a408f69af7fb0faa8b23ba8049af75267af0430de3c4327439f85/gphoto2-2.3.0.tar.gz
"

DEPEND=""
RDEPEND="
	media-libs/libgphoto2"

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/gphoto2-2.3.0"