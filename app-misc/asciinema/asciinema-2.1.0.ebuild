# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Terminal session recorder"
HOMEPAGE="https://asciinema.org/ https://pypi.org/project/asciinema/"
SRC_URI="https://files.pythonhosted.org/packages/2c/31/492da48c9d7d23cd26f16c8f459aeb443ff056258bed592b5ba28ed271ea/asciinema-2.1.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="GPL-3+"
KEYWORDS="*"

S="${WORKDIR}/asciinema-2.1.0"

python_prepare_all() {
	distutils-r1_python_prepare_all
	sed -i -e "s|data_files=\[('share/doc/asciinema|&-${PVR}|" setup.py || die
}
