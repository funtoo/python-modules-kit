# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/90/6d/00a06681a7659135018d219f62239709804573cbe615dfa2ba3e8933e097/sip-6.7.3.tar.gz -> sip-6.7.3.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.7.3"