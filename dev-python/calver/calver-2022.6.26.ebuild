# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Setuptools extension for CalVer package versions"
HOMEPAGE="https://github.com/di/calver https://pypi.org/project/calver/"
SRC_URI="https://files.pythonhosted.org/packages/b5/00/96cbed7c019c49ee04b8a08357a981983db7698ae6de402e57097cefc9ad/calver-2022.6.26.tar.gz -> calver-2022.6.26.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/calver-2022.6.26"