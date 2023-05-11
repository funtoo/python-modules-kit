# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Terminal session recorder"
HOMEPAGE="https://asciinema.org/ https://pypi.org/project/asciinema/"
SRC_URI="https://files.pythonhosted.org/packages/26/40/20891ed2770311c22543499a011906858bb12450bf46bd6d763f39da0002/asciinema-2.2.0.tar.gz -> asciinema-2.2.0.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="GPL-3+"
KEYWORDS="*"
S="${WORKDIR}/asciinema-2.2.0"

python_prepare_all() {
	distutils-r1_python_prepare_all
	sed -i -e "s|data_files=\[('share/doc/asciinema|&-${PVR}|" setup.py || die
}
