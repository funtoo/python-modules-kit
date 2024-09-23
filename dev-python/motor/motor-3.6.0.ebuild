# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Non-blocking MongoDB driver for Tornado or asyncio"
HOMEPAGE="None https://pypi.org/project/motor/"
SRC_URI="https://files.pythonhosted.org/packages/6a/d1/06af0527fd02d49b203db70dba462e47275a3c1094f830fdaf090f0cb20c/motor-3.6.0.tar.gz -> motor-3.6.0.tar.gz
"

DEPEND=""
RDEPEND="
	!<dev-python/pymongo-4.1
	>=dev-python/pymongo-4.1[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="Apache-2.0"
KEYWORDS="*"
S="${WORKDIR}/motor-3.6.0"