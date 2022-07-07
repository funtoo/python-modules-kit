# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/earwig/mwparserfromhell https://pypi.org/project/mwparserfromhell/"
SRC_URI="https://files.pythonhosted.org/packages/23/03/4fb04da533c7e237c0104151c028d8bff856293d34e51d208c529696fb79/mwparserfromhell-0.5.4.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/mwparserfromhell-0.6 "
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/mwparserfromhell-0.5.4"

post_src_install() {
	rm -rf ${D}/usr/bin
}