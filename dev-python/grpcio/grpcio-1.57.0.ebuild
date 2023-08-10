# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="HTTP/2-based RPC framework"
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/18/b5/3ebe1bd133f472640e2d8941d2208b8de63706ebc08b09e1bb988d7f0071/grpcio-1.57.0.tar.gz -> grpcio-1.57.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.57.0"