# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2+ )
inherit distutils-r1

DESCRIPTION="Simple python library for color and formatting to terminal"
HOMEPAGE="None https://pypi.org/project/colored/"
SRC_URI="https://files.pythonhosted.org/packages/a6/ba/8a05344f7382885e2c41a4ccf73f396bc51acf333cdbee3f4e181f49148c/colored-2.2.5.tar.gz -> colored-2.2.5.tar.gz
"

DEPEND=""
IUSE=""
SLOT="0"
LICENSE="MIT"
KEYWORDS="*"
S="${WORKDIR}/colored-2.2.5"