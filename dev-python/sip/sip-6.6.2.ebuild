# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/5b/cb/c27c925ae07bd03a2597fa1db17bfc2a4ac57da61aeb90f8ec98ffbb975b/sip-6.6.2.tar.gz -> sip-6.6.2.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.6.2"