# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://www.riverbankcomputing.com/software/sip/ https://pypi.org/project/sip/"
SRC_URI="https://files.pythonhosted.org/packages/c7/09/68bfefcdc48875e66aabafc946620483d0cd93aba52dde37d2059e5bf927/sip-6.7.8.tar.gz -> sip-6.7.8.tar.gz
"

DEPEND=""
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/toml[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="SIP"
KEYWORDS="*"
S="${WORKDIR}/sip-6.7.8"