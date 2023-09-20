# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/5d/a2/781bae6df87dfd31115b24b1fe01213ef29caf9dbd0b8c1688c59aebf617/grpcio-1.58.0.tar.gz -> grpcio-1.58.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.58.0"