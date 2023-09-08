# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/23/08/837256b56651f37f00d12d6af9ba07d3bcc80b421a8ef5ece42b911441d4/grpcio-tools-1.58.0.tar.gz -> grpcio-tools-1.58.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.58.0"