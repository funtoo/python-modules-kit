# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/55/7a/b6d5a5d69d6ab0df70a7ceed16f0e9a6c0bdc09376c92fa5638d08803fa4/grpcio-tools-1.43.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"

S="${WORKDIR}/grpcio-tools-1.43.0"