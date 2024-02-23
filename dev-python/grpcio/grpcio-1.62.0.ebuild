# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/50/4e/7ed8c24c93c8d000b9ea2927f555ae3b03cfabe035d65eda0db848cb20b6/grpcio-1.62.0.tar.gz -> grpcio-1.62.0.tar.gz"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.62.0"