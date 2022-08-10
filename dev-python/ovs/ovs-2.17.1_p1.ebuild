# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://www.openvswitch.org/ https://pypi.org/project/ovs/"
SRC_URI="https://files.pythonhosted.org/packages/4c/88/e7effd0c8d50e08d99c91d366b8ebdf493daac9fd96bc834165c3a58b7c3/ovs-2.17.1.post1.tar.gz -> ovs-2.17.1.post1.tar.gz
"

DEPEND=""
RDEPEND="dev-python/sortedcontainers[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/ovs-2.17.1.post1"