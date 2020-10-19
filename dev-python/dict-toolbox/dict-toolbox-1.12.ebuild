# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://files.pythonhosted.org/packages/77/28/911510435be3d84a4da7536cd0ef8dee0602d082eb9403bf8f66a4b651d0/dict-toolbox-1.12.tar.gz"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"

S="${WORKDIR}/dict-toolbox-${PV}"

src_prepare() {
	touch ${S}/requirements.txt
	default
}
