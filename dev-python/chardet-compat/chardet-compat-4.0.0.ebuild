# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/chardet/chardet https://pypi.org/project/chardet/"
SRC_URI="https://files.pythonhosted.org/packages/ee/2d/9cdc2b527e127b4c9db64b86647d567985940ac3698eeabc7ffaccb4ea61/chardet-4.0.0.tar.gz -> chardet-4.0.0.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/chardet-5.0.0-r1 "
IUSE=""
SLOT="0"
LICENSE=""
KEYWORDS="*"
S="${WORKDIR}/chardet-4.0.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}