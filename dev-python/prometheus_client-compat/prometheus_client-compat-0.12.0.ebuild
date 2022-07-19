# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/prometheus/client_python https://pypi.org/project/prometheus-client/"
SRC_URI="https://files.pythonhosted.org/packages/e6/ed/7876a26352b161de50413e4ad037632ac5263b7887a8097de10c414f94f0/prometheus_client-0.12.0.tar.gz -> prometheus_client-0.12.0.tar.gz
"

DEPEND=""
RDEPEND="dev-python/twisted[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/prometheus_client-0.12.0"

post_src_install() {
	rm -rf ${D}/usr/bin
}