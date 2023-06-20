# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple python library for color and formatting to terminal"
HOMEPAGE="None https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/37/ff/1af25597b2275c47872c9041bde7c9919bbb387ab2c755fd5d4c004dc964/colored-2.1.0.tar.gz -> colored-2.1.0.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-2.1.0"