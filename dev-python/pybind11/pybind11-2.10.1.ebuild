# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="https://github.com/pybind/pybind11 https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/2f/23/aaf147a5bc31c8be286f07d862b3699d7b49e3411fb75087525b5c31ab3e/pybind11-2.10.1.tar.gz -> pybind11-2.10.1.tar.gz
"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pybind11-2.10.1"

python_install() {
	distutils-r1_python_install
	doheader -r "${S}"/pybind11/include/*
	insinto /usr/share/cmake
	doins -r "${S}"/pybind11/share/cmake/*
}
