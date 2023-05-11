# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
DISTUTILS_USE_SETUPTOOLS="rdepend"
inherit distutils-r1

DESCRIPTION="Seamless operability between C++11 and Python"
HOMEPAGE="https://github.com/pybind/pybind11 https://pypi.org/project/pybind11/"
SRC_URI="https://files.pythonhosted.org/packages/bb/f9/a526ea001ecadd48d90ed7a61038b5ba732136d76b60357d23dc37521c58/pybind11-2.10.4.tar.gz -> pybind11-2.10.4.tar.gz
"

DEPEND=""
RDEPEND="dev-cpp/eigen:3"
IUSE=""
RESTRICT="test"
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/pybind11-2.10.4"

python_install() {
	distutils-r1_python_install
	doheader -r "${S}"/pybind11/include/*
	insinto /usr/share/cmake
	doins -r "${S}"/pybind11/share/cmake/*
}
