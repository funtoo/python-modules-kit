# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION=""
HOMEPAGE=" https://pypi.org/project/build/"
SRC_URI="https://files.pythonhosted.org/packages/0f/61/aaf43fbb36cc4308be8ac8088f52db9622b0dbf1f0880c1016ae6aa03f46/build-0.9.0.tar.gz -> build-0.9.0.tar.gz
"

DEPEND=""
RDEPEND="
	>=dev-python/packaging-19.0[${PYTHON_USEDEP}]
	>=dev-python/pep517-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/tomli-1.0.0[${PYTHON_USEDEP}]"

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/build-0.9.0"