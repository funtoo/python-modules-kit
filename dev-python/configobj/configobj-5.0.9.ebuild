# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Simple config file reader and writer"
HOMEPAGE="http://www.voidspace.org.uk/python/configobj.html https://pypi.org/project/configobj/"
SRC_URI="https://files.pythonhosted.org/packages/f5/c4/c7f9e41bc2e5f8eeae4a08a01c91b2aea3dfab40a3e14b25e87e7db8d501/configobj-5.0.9.tar.gz -> configobj-5.0.9.tar.gz
"

DEPEND=""
RDEPEND="dev-python/six[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/configobj-5.0.9"