# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )

inherit distutils-r1

DESCRIPTION="C++ header library which makes it easier to write Python extension modules"
HOMEPAGE="https://pypi.org/project/cppy"
SRC_URI="https://files.pythonhosted.org/packages/e0/94/3cca7fccecf9b63219f3bf8f08af719f6d3ab06c4acdcc9372a15a12b593/cppy-1.2.0.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="*"

distutils_enable_tests pytest