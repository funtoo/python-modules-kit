# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/19/6e/73feb7c3762595049d0b95490fb486d0af16aa92d72a58b4ada2f1ab7e79/grpcio-tools-1.62.0.tar.gz -> grpcio-tools-1.62.0.tar.gz"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.62.0"