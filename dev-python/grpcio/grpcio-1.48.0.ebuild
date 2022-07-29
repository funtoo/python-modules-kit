# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://grpc.io https://pypi.org/project/grpcio/"
SRC_URI="https://files.pythonhosted.org/packages/10/f0/e45a5d5e2ce287dfa7f3b98a8ae9cfb1e87be5cf9d5700af981c0007ab57/grpcio-1.48.0.tar.gz -> grpcio-1.48.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/grpcio-tools-1.42.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/grpcio-1.48.0"