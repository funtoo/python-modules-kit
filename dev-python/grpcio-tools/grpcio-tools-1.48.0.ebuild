# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/c3/8c/d1b64ef883b3850050130032b6d2c18957a4ca099922483eba83ab4f24c6/grpcio-tools-1.48.0.tar.gz -> grpcio-tools-1.48.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.48.0"