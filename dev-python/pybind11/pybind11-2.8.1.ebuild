# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="https://github.com/pybind/pybind11 https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/9e/d2/752727ad5225520cb285ae1060b86777bc70180aa3b09904fd21a0e40207/pybind11-2.8.1.tar.gz
"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"

S="${WORKDIR}/pybind11-2.8.1"

python_install() {
	distutils-r1_python_install
	doheader -r "${S}"/pybind11/include/*
	insinto /usr/share/cmake
	doins -r "${S}"/pybind11/share/cmake/*
}
