# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/99/85/261c41cc709f65d5b87669f42e502d05cc544c24884121bc594ab0329d8e/sip-6.8.3.tar.gz -> sip-6.8.3.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.8.3"