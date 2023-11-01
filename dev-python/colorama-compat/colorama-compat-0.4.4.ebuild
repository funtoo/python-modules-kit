# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="ANSI escape character sequences for colored terminal text & cursor positioning"
HOMEPAGE="https://github.com/tartley/colorama https://pypi.org/project/colorama/"
SRC_URI="https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz -> colorama-0.4.4.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/colorama-0.4.6-r1 "
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/colorama-0.4.4"

post_src_install() {
	rm -rf ${D}/usr/bin
}