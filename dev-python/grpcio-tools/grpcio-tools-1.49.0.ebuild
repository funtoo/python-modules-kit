# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio-tools/"
SRC_URI="https://files.pythonhosted.org/packages/d5/65/62d9cd43cec612cbba206d83db250d53dff699c5ffe9c05fc9ec191887a9/grpcio-tools-1.49.0.tar.gz -> grpcio-tools-1.49.0.tar.gz
"

DEPEND="
	=dev-libs/protobuf-3*"
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-tools-1.49.0"