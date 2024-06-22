# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="A Python bindings generator for C/C++ libraries"
HOMEPAGE="None https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/3e/f5/85bfb3c716b8eda9e2b0c0c5f36acb701746045c828a4497a44e581db3a6/sip-6.8.5.tar.gz -> sip-6.8.5.tar.gz"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.8.5"