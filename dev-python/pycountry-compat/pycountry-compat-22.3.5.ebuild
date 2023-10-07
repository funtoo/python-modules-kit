# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION="ISO country, subdivision, language, currency and script definitions and their translations"
HOMEPAGE="https://github.com/flyingcircusio/pycountry"
SRC_URI="https://files.pythonhosted.org/packages/33/24/033604d30f6cf82d661c0f9dfc2c71d52cafc2de516616f80d3b0600cb7c/pycountry-22.3.5.tar.gz -> pycountry-22.3.5.tar.gz
"

DEPEND=""
RDEPEND="!<dev-python/pycountry-19.7.15 "
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="LGPL-2.1"
KEYWORDS="*"
S="${WORKDIR}/pycountry-22.3.5"

post_src_install() {
	rm -rf ${D}/usr/bin
}