# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Protobuf code generator for gRPC"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/c1/fe/3adf1035c1f9e9243516530beae67e197f2acc17562ec75f03a0ba77fc55/grpcio_tools-1.70.0.tar.gz -> grpcio_tools-1.70.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio_tools-1.70.0"