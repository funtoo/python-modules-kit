# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/mrabarnett/mrab-regex https://pypi.org/project/regex/"
SRC_URI="https://files.pythonhosted.org/packages/93/8c/17f45cdfb39b13d4b5f909e4b4c2917abcbdef9c0036919a0399769148cf/regex-2020.9.27.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/regex-2018 "
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/regex-2020.9.27"

post_src_install() {
	rm -rf ${D}/usr/bin
}