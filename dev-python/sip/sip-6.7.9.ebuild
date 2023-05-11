# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/48/75/98987181e897ef378d6c239ee733328a7264a41f2d8263e61d7b7c4c0909/sip-6.7.9.tar.gz -> sip-6.7.9.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.7.9"