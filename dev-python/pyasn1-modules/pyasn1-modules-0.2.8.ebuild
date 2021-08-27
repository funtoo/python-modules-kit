# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ pypy3 )
inherit distutils-r1

DESCRIPTION="A collection of ASN.1-based protocols modules."
HOMEPAGE="https://github.com/etingof/pyasn1-modules https://pypi.org/project/pyasn1-modules/"
SRC_URI="https://files.pythonhosted.org/packages/88/87/72eb9ccf8a58021c542de2588a867dbefc7556e14b2866d1e40e9e2b587e/pyasn1-modules-0.2.8.tar.gz
"

DEPEND=""
RDEPEND=">=dev-python/pyasn1-0.4.6[${PYTHON_USEDEP}]"

IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD-2"
KEYWORDS="*"

S="${WORKDIR}/pyasn1-modules-0.2.8"

python_install_all() {
	distutils-r1_python_install_all
	insinto /usr/share/${P}
	doins -r tools
}
