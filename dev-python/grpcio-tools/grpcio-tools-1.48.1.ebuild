# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/77/9f/ed2a697725c762a136c81bb92e21c86787492b716493e9e8e4ee192369cf/grpcio-tools-1.48.1.tar.gz -> grpcio-tools-1.48.1.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.48.1"