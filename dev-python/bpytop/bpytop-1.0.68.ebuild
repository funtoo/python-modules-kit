# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/aristocratos/bpytop https://pypi.org/project/bpytop/"
SRC_URI="https://files.pythonhosted.org/packages/97/bb/a9c8a28f6c33e6b121ebd6ef92100274418f0774f873f91965a72815a889/bpytop-1.0.68.tar.gz -> bpytop-1.0.68.tar.gz
"

DEPEND=""
RDEPEND="dev-python/psutil[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/bpytop-1.0.68"

src_install() {
	insinto "/usr/share/${PN}/themes"
	doins themes/*.theme
	distutils-r1_src_install
}
