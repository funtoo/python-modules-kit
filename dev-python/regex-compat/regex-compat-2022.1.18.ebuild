# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="Alternative regular expression module, to replace re."
HOMEPAGE="https://github.com/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/4c/75/b5b60055897d78882da8bc4c94609067cf531a42726df2e44ce69e8ec7a9/regex-2022.1.18.tar.gz -> regex-2022.1.18.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/regex-2018 "
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/regex-2022.1.18"

post_src_install() {
	rm -rf ${D}/usr/bin
}