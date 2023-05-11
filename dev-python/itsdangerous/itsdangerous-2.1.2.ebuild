# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Various helpers to pass trusted data to untrusted environments and back"
HOMEPAGE="https://palletsprojects.com/p/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/7f/a1/d3fb83e7a61fa0c0d3d08ad0a94ddbeff3731c05212617dff3a94e097f08/itsdangerous-2.1.2.tar.gz -> itsdangerous-2.1.2.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/itsdangerous-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/itsdangerous-2.1.2"