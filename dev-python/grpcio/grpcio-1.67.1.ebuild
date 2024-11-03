# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/20/53/d9282a66a5db45981499190b77790570617a604a38f3d103d0400974aeb5/grpcio-1.67.1.tar.gz -> grpcio-1.67.1.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.67.1"