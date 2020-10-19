# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/hamcrest/PyHamcrest"
SRC_URI="https://files.pythonhosted.org/packages/a4/89/a469aad9256aedfbb47a29ec2b2eeb855d9f24a7a4c2ff28bd8d1042ef02/PyHamcrest-1.9.0.tar.gz"

DEPEND=""
RDEPEND="!<dev-python/pyhamcrest-2.0.0"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/pyhamcrest-${PV}"

S="${WORKDIR}/PyHamcrest-${PV}"
