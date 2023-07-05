# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Terminal session recorder"
HOMEPAGE="https://asciinema.org/ https://pypi.org/project/asciinema/"
SRC_URI="https://files.pythonhosted.org/packages/2b/78/b57985f4efe85e1b49a7ec48fd0f876f75937ae541740c5589754d6164a9/asciinema-2.3.0.tar.gz -> asciinema-2.3.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="GPL-3+"
KEYWORDS="*"
S="${WORKDIR}/asciinema-2.3.0"

python_prepare_all() {
	distutils-r1_python_prepare_all
	sed -i -e "s|data_files=\[('share/doc/asciinema|&-${PVR}|" setup.py || die
}
