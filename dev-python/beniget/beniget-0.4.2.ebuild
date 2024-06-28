# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Extract semantic information about static Python code"
HOMEPAGE="https://github.com/serge-sans-paille/beniget/ https://pypi.org/project/beniget/"
SRC_URI="https://files.pythonhosted.org/packages/82/ff/cc184e52bedd4c00e5ca4956fa7d5698938b2c5600a00bfb60e7f58f5d8c/beniget-0.4.2.tar.gz -> beniget-0.4.2.tar.gz"

DEPEND=""
RDEPEND="dev-python/gast[${PYTHON_USEDEP}]"
IUSE=""
SLOT="0"
LICENSE="BSD"
KEYWORDS="*"
S="${WORKDIR}/beniget-0.4.2"