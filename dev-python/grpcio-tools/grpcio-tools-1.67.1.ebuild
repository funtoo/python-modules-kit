# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/ae/f9/6facde12a5a8da4398a3a8947f8ba6ef33b408dfc9767c8cefc0074ddd68/grpcio_tools-1.67.1.tar.gz -> grpcio_tools-1.67.1.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.67.1"