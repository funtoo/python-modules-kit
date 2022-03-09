# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Various helpers to pass trusted data to untrusted environments and back"
HOMEPAGE="https://palletsprojects.com/p/itsdangerous/ https://pypi.org/project/itsdangerous/"
SRC_URI="https://files.pythonhosted.org/packages/9d/86/39f81e23f49eaf62d22248d48771dbf3bce7c52dfdf566e3d8d4c0657f15/itsdangerous-2.1.1.tar.gz
"

DEPEND=""
RDEPEND="python_targets_python2_7? ( dev-python/itsdangerous-compat )"
IUSE="python_targets_python2_7"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/itsdangerous-2.1.1"