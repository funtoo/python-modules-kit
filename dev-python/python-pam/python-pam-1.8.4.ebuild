# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3+ )
inherit distutils-r1

DESCRIPTION="Python3 module for PAM authentication"
HOMEPAGE="https://github.com/FirefighterBlu3/python-pam"
SRC_URI="https://files.pythonhosted.org/packages/01/16/544d01cae9f28e0292dbd092b6b8b0bf222b528f362ee768a5bed2140111/python-pam-1.8.4.tar.gz
"

DEPEND=""
RDEPEND=""

IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"

S="${WORKDIR}/python-pam-1.8.4"