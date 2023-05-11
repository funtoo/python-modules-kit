# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/e2/a9/4f4bdb13e414474de9ae770700e5450f8beb981282af171255c9d4cbed25/grpcio-tools-1.54.0.tar.gz -> grpcio-tools-1.54.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.54.0"