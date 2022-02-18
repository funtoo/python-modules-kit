# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Various helpers to pass trusted data to untrusted environments and back"
HOMEPAGE="https://palletsprojects.com/p/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/82/00/89037083314067f1605233f6f30b94fdddc89d18e283b30b0c5be9e7f801/itsdangerous-2.1.0.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/itsdangerous-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/itsdangerous-2.1.0"