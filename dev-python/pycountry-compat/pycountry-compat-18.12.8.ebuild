# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/87/c7/c2c76c3ae4ac79c74c1871ae775ed97b70d475dd90d1e824b1d2fc0cd54f/pycountry-18.12.8.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pycountry-19.7.15 "
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"

S="${WORKDIR}/pycountry-18.12.8"

post_src_install() {
	rm -rf ${D}/usr/bin
}