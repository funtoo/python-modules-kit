# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/b1/a9/db4538e727eb0d627a345ab99c22cab041db98aac1eadfbeadbccc0c4376/grpcio-tools-1.54.2.tar.gz -> grpcio-tools-1.54.2.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.54.2"