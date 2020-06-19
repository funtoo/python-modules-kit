# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="Configuration sub for Plugin-Oriented Programming"
HOMEPAGE="https://pypi.org/project/pop-config/"
SRC_URI="https://files.pythonhosted.org/packages/95/c7/0e6f9cf32e84832f8f547f871afd20d3ba16ee502e85ba12aae13ee5bfb1/pop-config-6.7.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="*"
IUSE=""

src_prepare() {
	touch ${S}/requirements.txt
	default
}

RDEPEND="dev-python/pyyaml[${PYTHON_USEDEP}]"